import re

def decriptar(frase):
	n = bytes.fromhex(frase)
	regex = re.compile(r"[^a-zA-Z\.?!:\n' ]")

	for key in range(0x00, 0xff):
		xor = bytes(a ^ key for a in n)
		try:
			decodificado = xor.decode('utf-8')
		except UnicodeDecodeError:
			continue
		if not regex.findall(decodificado):
			print(decodificado)

def main():
	decriptar("1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736")
main()