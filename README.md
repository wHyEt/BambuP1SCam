# BambuP1SCam
Docker Container for Providing the Stream of the Camera from a Bambu P1S  3D Printer


./BambuP1SCam --help
by hisptoot 2023.12.19
./BambuP1SCam usage:
   ./BambuP1SCam start_stream [options]
      Start a camera stream and write the raw stream to stdout
   ./BambuP1SCam start_stream_local -s <ip_addr_of_p1p> -a <access_code_of_p1p>
      Start a local camera stream for p1p and write the raw stream to stdout
   ./BambuP1SCam start_stream_local_x1c -s <ip_addr_of_x1c> -a <access_code_of_x1c> -d <dev_id_of_x1c>
      Start a local camera stream for x1c and write the raw stream to stdout
   ./BambuP1SCam gen_cfg -u <account_name> -p <password> -r <region: us cn> [-d <dev_id>] [other_options]
      Generate a simple BambuNetworkEngine.conf file
   ./BambuP1SCam list_dev [options]
      list machines info and access code

 options:
   -u <account_name>
   -p <password>
   -t <token>
   -r <region>
      us cn
   -i <user_id>
   -d <dev_id>
   -s <ip_addr_of_p1p>
   -a <access_code_of_p1p>


./BambuP1SCam list_dev -u <user> -p <password>

Generate BambuNetworkEngine.conf

bambusource2raw.exe gen_cfg -u <account_name> -p <password> -r <region: us cn> -d <dev_id>

# Just starting to BUild this container is still work in progress

# Please Support my Work, thank you :)

<a href="https://www.buymeacoffee.com/TechNic" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" style="height: 20px !important;width: 155px !important;" ></a>
