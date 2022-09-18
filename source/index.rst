.. CIS-Breakdown documentation master file, created by
   sphinx-quickstart on Fri Jun 10 21:01:27 2022.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to CIS-Breakdown!
=========================

CIS Benchmark Breakdown is a project by CAMS Computer Science and Cybersecurity
Club, aimed at creating a summarization of the Center for Information
Security's `Benchmarks <https://downloads.cisecurity.org/#/>`_.

These benchmarks contain complete guides to locking down a system, but are
often obtuse and hard to read. Our goal is to simplify them into a set of
readable steps to follow in order to lock down a system.

Our target systems are Ubuntu 18, Debian 10, Windows 10, and Windows Server
2019, which are the main images found in the AFA Cyberpatriot Competition.
More information about the competition can be found `here <https://www.uscyberpatriot.org/home>`_.

.. toctree::
   :maxdepth: 2
   :caption: About:

   About <./about/about.md>
   Contributing <./about/contributing.md>

.. toctree::
   :maxdepth: 1
   :caption: Windows:

   Overview <./systems/windows/overview.md>
   Account Policies <./systems/windows/1.md>
   Local Policies <./systems/windows/2.md>
   System Services <./systems/windows/5.md>
   Windows Defender Firewall with Advanced Security <./systems/windows/9.md>
   Advanced Audit Policy Config <./systems/windows/17.md>
   Admin Templates (Computer) <./systems/windows/18.md>
   Admin Templates (User) <./systems/windows/19.md>


.. toctree::
   :maxdepth: 1
   :caption: Windows Server:

   Overview <./systems/server/overview.md>
   Account Policies <./systems/server/1.md>
   Local Policies <./systems/server/1.md>
   System Services <./systems/server/5.md>
   Windows Defender Firewall with Advanced Security <./systems/server/9.md>
   Advanced Audit Policy Config <./systems/server/17.md>
   Admin Templates (Computer) <./systems/server/18.md>
   Admin Templates (User) <./systems/server/19.md>
   Additional STIG Settings <./systems/server/20.md>


.. toctree:: 
   :maxdepth: 1
   :caption: Ubuntu/Debian:
   
   Overview <./systems/ubuntu/overview.md>
   Basic Info <./systems/ubuntu/basic_info.md>
   Initial Configuration <./systems/ubuntu/1.md>
   Services <./systems/ubuntu/2.md>
   Network Configuration <./systems/ubuntu/3.md>
   Logging and Auditing <./systems/ubuntu/4.md>
   Access, Authentication, and Authorization <./systems/ubuntu/5.md>
   System Maintenance <./systems/ubuntu/6.md>

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
