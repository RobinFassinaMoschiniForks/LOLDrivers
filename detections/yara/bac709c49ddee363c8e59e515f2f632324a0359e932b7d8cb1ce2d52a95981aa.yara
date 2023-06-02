
rule PUA_VULN_Driver_CPUID_cpuzsys_CPUIDservice_38cP {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 22ca5fe8fb0e5e22e6fb0848108c03f4.bin, e747f164fc89566f934f9ec5627cd8c3.bin, ce57844fb185d0cdd9d3ce9e5b6a891d.bin, c516acb873c7f8c24a0431df8287756e.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "34bee22c18ddbddbe115cf1ab55cabf0e482aba1eb2c343153577fb24b7226d3"
		hash = "5177a3b7393fb5855b2ec0a45d4c91660b958ee077e76e5a7d0669f2e04bcf02"
		hash = "ee45fd2d7315fd039f3585a66e7855ba4af9d4721e1448e602623de14e932bbe"
		hash = "bac709c49ddee363c8e59e515f2f632324a0359e932b7d8cb1ce2d52a95981aa"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]004300500055004900440020004400720069007600650072 } /* FileDescription CPUID Driver */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]00430050005500490044 } /* CompanyName CPUID */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0036002e0031002e0037003600300030002e003100360033003800350020006200750069006c0074002000620079003a002000570069006e00440044004b } /* FileVersion 6.1.7600.16385 built by: WinDDK */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0036002e0031002e0037003600300030002e00310036003300380035 } /* ProductVersion 6.1.7600.16385 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]006300700075007a002e007300790073 } /* InternalName cpuz.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]0043005000550049004400200073006500720076006900630065 } /* ProductName CPUID service */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]006300700075007a002e007300790073 } /* OriginalFilename cpuz.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f007000790072006900670068007400280043002900200032003000310037002000430050005500490044 } /* LegalCopyright Copyright(C) 2017 CPUID */
	condition:
		all of them
}