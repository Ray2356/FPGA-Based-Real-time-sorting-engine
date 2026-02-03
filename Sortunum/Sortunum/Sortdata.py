
import serial

# Establish a serial connection with the Basys3 board
ser = serial.Serial('COM23', 9600, timeout=1)

# Convert an integer value to a byte string
Num_data = int(input("What's your number to be sorted(0-1 048576):"))
ID = int(input("And what is the ID(0-4095):"))
data = ID*2^20 + Num_data
data = data.to_bytes(4, byteorder='little')
print("The data to sort is: " + data)
# Send the byte string over UART
ser.write(data)

# Close the serial connection
ser.close()