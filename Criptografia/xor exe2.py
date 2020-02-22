def xor(b1, b2):
    res = bytes(a ^ b for a,b in zip(b1,b2))
    print(res.hex())

def main():
    b1 = bytes.fromhex("1c0111001f010100061a024b53535009181c")
    b2 = bytes.fromhex("686974207468652062756c6c277320657965")
    xor(b1,b2)
main()


