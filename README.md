# BambuP1SCam
Docker Container for Providing the Stream of the Camera from a Bambu P1S  3D Printer

Inspired by https://github.com/slynn1324/BambuP1Streamer/tree/main container I thought I build a container witch gets all libs and is hosted on docker and compiles the source program for connection


# BambuP1SCam shell options:

```shell
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
```

# Get the device ID and the access code from your Bambu Account

./BambuP1SCam list_dev -u <user> -p <password>

Generate BambuNetworkEngine.conf

./BambuP1SCam gen_cfg -u <account_name> -p <password> -r <region: us cn> -d <dev_id>

# BambuNetworkEngine.conf 

```shell
{
        "country_code": "us",
        "last_monitor_machine": "<maschin id>",
        "user": {
                "user_id":      "xxxxxxxxxx",
                "token":        "<token stuff>"
        }
```
# TOKEN is  JWT Encrypted

``shell
{
    "exp": xxxxxxxxxx,
    "iat": xxxxxxxxxx,
    "jti": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    "iss": "http://keycloak-http.keycloak-prod-us/auth/realms/bbl",
    "aud": "account",
    "sub": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    "typ": "Bearer",
    "azp": "user-service",
    "session_state": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    "realm_access": {
        "roles": [
            "offline_access",
            "uma_authorization",
            "default-roles-bbl"
        ]
    },
    "resource_access": {
        "account": {
            "roles": [
                "manage-account",
                "manage-account-links",
                "view-profile"
            ]
        }
    },
    "scope": "email profile",
    "sid": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    "email_verified": false,
    "preferred_username": "xxxxxxxxxx",
    "username": "u_xxxxxxxxxx"
}
```

# Just starting to BUild this container is still work in progress

# Please Support my Work, thank you :)

<a href="https://www.buymeacoffee.com/TechNic" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" style="height: 50px !important;width: 155px !important;" ></a>


{
        "country_code": "us",
        "last_monitor_machine": "01P00A3B0100413",
        "user": {
                "user_id":      "2616385630",
                "token":        "eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI4OV8zYTZqeWl4LWFKa2I0V1prVmNqM0ZGR1dMRU5DWUpjT2hkMWYzVl8wIn0.eyJleHAiOjE3MzU1NzM4OTcsImlhdCI6MTcwNDQ2OTg5NywianRpIjoiYmVkMzdiZDAtMz>
        }
}^@