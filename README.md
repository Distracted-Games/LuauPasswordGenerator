This is a simple project for me to have some fun and try out standard Luau for non-Roblox tasks. This is a standard password generator.

### Important: You will need Luau installed to run this in your terminal.

# How to use:
Simply run the file for a default 16 character password that uses special characters:
```bash
luau GeneratePassword.luau
```
This will print out the generated password.

## Add Arguments
Alternatively, if you want a different password length, for example 32 characters:
```bash
luau GeneratePassword.luau -a 32
```

You can also choose not to use special characters, but then have to include the length:
```bash
luau GeneratePassword.luau -a 16 false
```
