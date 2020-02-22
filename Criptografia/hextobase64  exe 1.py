import base64


def codificar64(string):
    hexstr = str(string)
    bytes1 = bytes.fromhex(hexstr)
    codificar = base64.b64encode(bytes1)
    print(codificar)


def main():
    codificar64("49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d")

main()