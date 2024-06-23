# Easily Formattable Theme - EFT

EFT-gdscript is a godot asset that allows developers to easily create themes for their gui applications

You can download EFT by cloning this repository, or from the godot asset store!

## Why use EFT?

EFT allows the developers, and the users to create themes very easily for GUI applications that have EFT support. It is super easy to implement EFT into your project, and you can customize tons of aspects of your application, such as Colors, Fonts, Images, etc. There is also EFT for Python, and more in the future!

## How do I use EFT?

Here's how to get started with using EFT!

### Creating a theme

Creating a theme is simple! You just need to supply the name of the theme, and then any fields that you want! Not all types from EFT-py are currently supported, but the most important are. The ones you can use currently include:
- Color
- Int
- String
- Image
- Font

You can also add your own types using `register_type()`
```eft
- Theme Name

Primary: #fc7b2b : Color
Background: 255,255,255 : Color

FontSize: 16 : Int
Title: My Title : String
```

### Implementing themes
It's super easy to implement themes into your application, with just two lines of code you can grab a color, or any other property from the file!
```gdscript
my_theme = EFTTheme("user://my_theme.eft")

my_theme.get_property("Primary") # Returns a Color from the field "Primary"!
```

## Other

### Contributing
Contributions are highly appreciated, feel free to open an issue, or open a Pull Request :)

## Contact
@possiblepanda on discord
