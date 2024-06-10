# Simple Encryption Algorithm

This project is a simple encryption algorithm developed as a school project in 2006. The algorithm uses a modified Caesar cipher technique, where each byte of data is either incremented or decremented based on the position of the character in the password.

## How It Works

1. **Byte Reading**: Each byte from the input file is read.
2. **Modification**: Depending on the position of the character in the password, the byte is either increased or decreased.
3. **Writing**: The modified byte is written to the output file.

## Usage

### Encryption

To encrypt a file:
```pascal
procedure TForm1.Button1Click(Sender: TObject);
begin
  if maskedit1.text='' then
  begin
    ShowMessage('Please enter a password');
  end
  else
  begin
    if op.Execute then if sa.Execute then
      Coding(op.FileName, sa.FileName, MaskEdit1.Text, 1);
    statusbar1.SimpleText:='File Encrypted';
  end;
end;
```

### Decryption

To decrypt a file:
```pascal
procedure TForm1.Button2Click(Sender: TObject);
begin
  if maskedit1.text='' then
  begin
    ShowMessage('Please enter a password');
  end
  else
  begin
    if opd.Execute then if sad.Execute then
      Coding(opd.FileName, sad.FileName, MaskEdit1.Text, -1);
    statusbar1.SimpleText:='File Decrypted';
  end;
end;
```

## Limitations

This algorithm has several limitations and should not be used for securing sensitive data:

**Simple Structure:** The algorithm uses a basic linear transformation, making it vulnerable to various types of attacks.
**Password Repetition:** If the password is shorter than the file, it repeats, creating predictable patterns.
**No Initialization Vector (IV):** The lack of an IV means that identical data will be encrypted to identical ciphertext, making it more susceptible to cryptanalysis.

## Acknowledgements

This project was developed as a learning exercise in **2006**. It serves as an educational example of basic encryption techniques and highlights the importance of using robust and well-tested cryptographic algorithms in real-world applications.

## Disclaimer

I am fully aware of the limitations and weaknesses of this algorithm. It was developed as a **school project** and **should not be judged as a serious attempt** at creating a secure encryption method. For secure data encryption, please use established algorithms like AES or RSA.


