# CIS Benchmark Breakdown

CIS Benchmark Breakdown is a project by CAMS Computer Science and Cybersecurity
Club, aimed at creating a summarization of the Center for Information
Security's [Benchmarks][CIS Benchmarks].

These benchmarks contain complete guides to locking down a system, but are
often obtuse and hard to read. Our goal is to simplify them into a set of
readable steps to follow in order to lock down a system.

Our target systems are Ubuntu 18, Debian 10, Windows 10, and Windows Server
2019, which are the main images found in the AFA Cyberpatriot Competition.
More information about the competition can be found [here][Cyberpatriot].

[CIS Benchmarks]: https://downloads.cisecurity.org/#/
[Cyberpatriot]: https://www.uscyberpatriot.org/home
# Contributing

```{important}
   Do not edit README.md, as it is automatically created from the about and contributing pages!
```

To contribute, first download the [CIS Benchmarks] and find a section you
would like to help summarize. (See our examples for more info.)

Then, install the required python dependencies.

Windows:

```powershell
py -3 -m pip install --upgrade sphinx myst_parser pygments
```

Mac/Linux:

```bash
python3 -m pip install --upgrade sphinx myst_parser pygments
```

Then, clone the git repository and add your contributions to `/source`. Add
your contributions to `/source/index.rst` to make sure they appear on the
website. 

To build your changes, run `sphinx-build source docs`.

Then open a pull request to publish your changes! 
Please do not commit the `/docs` folder, as github actions is set to automatically build sphinx. 
Any help on this project is greatly appreciated!

[CIS Benchmarks]: https://downloads.cisecurity.org/#/
