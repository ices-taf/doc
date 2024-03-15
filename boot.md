Final folder structure is:

before taf.boot() is run all there is only the boot/initial folder
* **initial**: holds all uploaded, data, r packages and software
after taf.boot() is run there is potentially the following
* **packages**: holds the downloaded source code of the packages
* **data**: holds all downloaded datasets
* **software**: holds other software and code that is not an R package
* **library**: a local, system specific, R library (not version controlled)
```
boot
  |
  |___initial
      |___data
          |___uploaded_dataset_1
          |___uploaded_dataset_2
      |___packages
      |___software
  |
  |___data
      |___downloaded_dataset_1
      |___downloaded_dataset_1
      |___uploaded_dataset_1
      |___uploaded_dataset_2
  |
  |___software
      |___model_executable
  |
  |___packages
      |___downloaded_source_code_1
      |___downloaded_source_code_2
  |
  |___library (not version controlled)
      |___installed_package_1
      |___installed_package_2
```

Note the boot\library folder is not stored on github
