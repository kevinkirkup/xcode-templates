# xcode-templates

This project contains my custom XCode project and file templates.
Please feel free to use them as you wish. If you find bugs or have improvement
suggestions, please feel free to shoot me a pull request.

Further information is available at [Bob McCune's Blog]("http://www.bobmccune.com/2012/03/04/creating-custom-xcode-4-file-templates/")

The base file and project templates use for iOS and OSX are contained in the XCode bundle.
The templates files are stored in the individual users library directory:

    /Users/kevinkirkup/Library/Developer/Xcode/Templates

<img src="https://raw.github.com/kevinkirkup/xcode-templates/master/Resources/install_directory.png" />

## Mac

For Mac OSX, the template files are located at:

    /Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates

## iOS

For iOS, the template files are located at:

    /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates

## Getting Started

### Installation

Install the files in to your personal templates directory

```bash
rake install
```

### Uninstall

If find that you do not what to include the templates, they can be easy removed without affecting any of the other existing templates.

```bash
rake uninstall
```

## Example Usage

The templates will now show up in XCode when you try to create a new file or project.

To create a new file base on one of your templates, select *File > New... > File* in the Menu

<img src="https://raw.github.com/kevinkirkup/xcode-templates/master/Resources/new_file__menu.png" />

or Right click in the Project Navigator.

<img src="https://raw.github.com/kevinkirkup/xcode-templates/master/Resources/new_file__project_navigator.png" />

The new template group will show up in the File Wizard.

<img src="https://raw.github.com/kevinkirkup/xcode-templates/master/Resources/new_templates.png" />

Select the template and you are on your way.

## Credits

[Kevin Kirkup](https://github.com/kevinkirkup)([@pan_and_scan](http://twitter.com/pan_and_scan))

Thanks to [Bob McCune](https://github.com/tapharmonic) for posting the instructions on his blog.

## License

MIT
