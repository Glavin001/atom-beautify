# :lipstick: [atom-beautify](https://github.com/Glavin001/atom-beautify)

| Mac OS <img src="https://cloud.githubusercontent.com/assets/1885333/17059766/2530c9d8-4ffd-11e6-9529-3fa47dbff616.png" width="50px"> and <img src="https://cloud.githubusercontent.com/assets/1885333/17059750/11c4474e-4ffd-11e6-89e1-2486ca5b3234.png" width="100px"> | <img src="https://cloud.githubusercontent.com/assets/1885333/17059763/206a7d4a-4ffd-11e6-859e-7856902fb300.png" width="100px"> |
| --- | --- |
| [![Build Status](https://travis-ci.org/Glavin001/atom-beautify.svg?branch=master)](https://travis-ci.org/Glavin001/atom-beautify) | [![Build status](https://ci.appveyor.com/api/projects/status/himnq7tjxl2fdc8u?svg=true)](https://ci.appveyor.com/project/Glavin001/atom-beautify) |


[![Gitter chat](https://img.shields.io/badge/gitter-Glavin001%2Fatom--beautify-1dce73.svg)](https://gitter.im/Glavin001/atom-beautify)
[![Paypal Donations](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=X2RK5DKN6YXPJ&lc=CA&item_name=Atom%2dBeautify&item_number=atom%2dbeautify&currency_code=CAD&bn=PP%2dDonationsBF%3abtn_donate_LG%2egif%3aNonHosted)

[![Throughput Graph](https://graphs.waffle.io/Glavin001/atom-beautify/throughput.svg)](https://waffle.io/Glavin001/atom-beautify/metrics)

> Beautifier for Atom powered by [Unibeautify](https://github.com/Unibeautify/unibeautify)

| Before | After |
| --- | ---- |
| Original HTML | Beautified HTML |
| ![image](https://cloud.githubusercontent.com/assets/1885333/16542727/db52adc6-408a-11e6-824e-04aed06bd2f7.png) | ![image](https://cloud.githubusercontent.com/assets/1885333/16542728/dcac3700-408a-11e6-8e35-9c8fc4432edc.png) |

## Installation

Atom Package: https://atom.io/packages/atom-beautify

```bash
apm install atom-beautify
```

Or Settings/Preferences ➔ Packages ➔ Search for `atom-beautify`

## Contribute
1. Clone the repository
2. `cd 'atom-beautify'`
3. Run `npm install`
4. Run `apm link` (if necessary)
5. Install [atom-typescript](https://atom.io/packages/atom-typescript) (if using Atom)
6. Typescript files in `/src` will be compiled to Javascript and saved in `/lib` whenever a file is saved