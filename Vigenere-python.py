from itertools import starmap, cycle
def encrypt(pt, ke):
    def encode(p, k): return chr((((ord(p) - 97) + (ord(k) - 96)) % 26) + 97)
    encoded = "".join(starmap(encode, zip(pt, cycle(ke))))
    print "%s" % encoded

def decrypt(ct, kd):
    def encode(c, k): return chr((((ord(c) - 97) - (ord(k) - 96)) % 26) + 97)
    encoded = "".join(starmap(encode, zip(ct, cycle(kd))))
    print "%s" % encoded

prompt = "> "
while True:
    print "Encrypt or Decrypt? E/D"
    ans = raw_input(prompt).lower()
    if ans == 'e':
        print "Input plain text: "
        plain = raw_input(prompt)
        plain = filter(lambda _: _.isalpha(), plain.lower())
        print "Input key: "
        key = raw_input(prompt)
        key = filter(lambda _: _.isalpha(), key.lower())
        encrypt(plain, key)
    else:
        print "Input cipher text: "
        cipher = raw_input(prompt)
        cipher = filter(lambda _: _.isalpha(), cipher.lower())
        print "Input key: "
        key = raw_input(prompt)
        key = filter(lambda _: _.isalpha(), key.lower())
        decrypt(cipher, key)
    print "Again? Y/N"
    ans = raw_input(prompt).lower()
    if ans == 'n':
        break