
rule PUA_VULN_Driver_OpenLibSysorg_WinRingsys_WinRing_5zrM {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 12cecc3c14160f32b21279c1a36b8338.bin, 828bb9cb1dd449cd65a29b18ec46055f.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "47eaebc920ccf99e09fc9924feb6b19b8a28589f52783327067c9b09754b5e84"
		hash = "3ec5ad51e6879464dfbccb9f4ed76c6325056a42548d5994ba869da9c4c039a8"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00570069006e00520069006e00670030 } /* FileDescription WinRing0 */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]004f00700065006e004c00690062005300790073002e006f00720067 } /* CompanyName OpenLibSys.org */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0031002e0030002e0031002e0032 } /* FileVersion 1.0.1.2 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0031002e0030002e0031002e0032 } /* ProductVersion 1.0.1.2 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]00570069006e00520069006e00670030002e007300790073 } /* InternalName WinRing0.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00570069006e00520069006e00670030 } /* ProductName WinRing0 */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]00570069006e00520069006e00670030002e007300790073 } /* OriginalFilename WinRing0.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f00700079007200690067006800740020002800430029002000320030003000370020004f00700065006e004c00690062005300790073002e006f00720067002e00200041006c006c0020007200690067006800740073002000720065007300650072007600650064002e } /* LegalCopyright Copyright (C) 2007 OpenLibSys.org. All rights reserved. */
	condition:
		all of them
}