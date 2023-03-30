#include <iostream>
#include <cstring>
#include <curl/curl.h>

struct RecievedData{
    size_t size_{0};
    char* content_{nullptr};
};

static size_t writeCallBack(char* recieved_data, size_t number_of_blocks, size_t size_of_block, void* output_data ){
    //Reallocate the previously recieved data to a bigger memory slot to copy the newly recieved data
    RecievedData* o_data = static_cast<RecievedData*>(output_data);
    void* new_memory_block = realloc(o_data->content_, o_data->size_ + number_of_blocks * size_of_block + 1);
    
    // Check if the program was successful in allocating memory
    if(new_memory_block == nullptr) return 0;
    // Copy the newly recieved data to the memory block of the output_data, after the current content of it.
    memcpy(new_memory_block + o_data->size_, recieved_data, number_of_blocks * size_of_block);
    o_data->content_ = static_cast<char*>(new_memory_block);
    o_data->size_ += number_of_blocks * size_of_block + 1;
    // Add the terminating zero at the end of each block of data recieved (Not Neccessary!! It should be determined based on the application)
    o_data->content_[number_of_blocks * size_of_block] = 0;
    // This step is neccessary in case the realloc could not expand the current memory block and forced to move the memory to somewhere else
    output_data = o_data;
    // Return the size of handled data
    return number_of_blocks * size_of_block;
};



int main(int, char**) {

    // If you do NOT initialize the global requirements of the curl, 
    // it will be automatically done in easy_init.
    curl_global_init(CURL_GLOBAL_ALL);
    
    CURL* curl_handle;
    curl_handle = curl_easy_init();
    RecievedData output_data;

    constexpr size_t error_buffer_size{1000};
    char error_buffer[error_buffer_size];

    if(curl_handle){
        // Set the verbose to 1 so you will get more info in case of error
        curl_easy_setopt(curl_handle, CURLOPT_VERBOSE, 1L);
        // Include the responce Header in the data output stream.
        curl_easy_setopt(curl_handle, CURLOPT_HEADER, 0L);

        curl_easy_setopt(curl_handle, CURLOPT_ERRORBUFFER, &error_buffer);

        curl_easy_setopt(curl_handle, CURLOPT_URL, "https://www.example.com/");
        // If we do not set the CallBack function, which determines what should happen to the recieved data
        // the recived data will be sent to the standard output.
        curl_easy_setopt(curl_handle, CURLOPT_WRITEFUNCTION, writeCallBack);
        curl_easy_setopt(curl_handle, CURLOPT_WRITEDATA, &output_data);
        // This will send the output to Standard Output, unless it is set otherwise.
        // This is a blocking process.
        CURLcode res = curl_easy_perform(curl_handle);
        if(res != CURLE_OK){
            //std::cout<< curl_easy_strerror(res)<<std::endl;
            std::cout<<"Error: "<<error_buffer<<std::endl;
            curl_easy_cleanup(curl_handle);
            curl_global_cleanup();
            return 1;
        }
        std::cout<<"Size of the Recieved Data: "<<output_data.size_<<std::endl;
        std::cout<<"Content of the Recieved Data: \n"<<output_data.content_<<std::endl;
    }

    curl_easy_cleanup(curl_handle);

    curl_global_cleanup();

}
