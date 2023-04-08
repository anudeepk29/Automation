import json,sys

f = open(sys.argv[1])
  
  # returns JSON object as 
  # a dictionary
data = json.load(f)

public_ips=[]
private_ips=[]
    
    # Iterating through the json
    # list
for i in data['outputs']['private_ip']['value']:
    print("Private_IPs: ")
    #print(i)
    private_ips.append(i)
for i in data['outputs']['public_ip']['value']:
    print("Public_IPs: ")
    #print(i)
    public_ips.append(i)
    # Closing file
f.close()

print(public_ips)


f= open("./hosts","w+")
f.write("[jenkins]\r\n")
for i in range(len(public_ips[0])):
    f.write(public_ips[0][i]+"\n")

#    print()

