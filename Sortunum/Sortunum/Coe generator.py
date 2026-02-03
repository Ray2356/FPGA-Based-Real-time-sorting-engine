
import random

def write_coe_file(filename, data, radix=10):
    with open(filename, 'w') as f:
        # Write the COE file header
        f.write('memory_initialization_radix={};\n'.format(radix))
        f.write('memory_initialization_vector=\n')

        # Write the data values
        for i, value in enumerate(data):
            if radix == 2:
                value_str = format(value, 'b').zfill(8)
            else:
                value_str = format(value, 'd').zfill(2)
            print(value_str)
            # Add a comma after each value, except for the last one
            if i < len(data) - 1:
                f.write(value_str + ',\n')
            else:
                f.write(value_str + ';\n')


# Example usage
num = 100
num_data = [random.randint(0,1048576) for i in range(num)]
ID = [random.randint(0,4095)*(2**20) for i in range(num)]
print(num_data)
print(ID)
data = [sum(x) for x in zip(num_data, ID)]
print(data)
write_coe_file('example.coe', data)