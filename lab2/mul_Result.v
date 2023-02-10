/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Thu Feb  9 21:38:49 2023
/////////////////////////////////////////////////////////////


module cf_fp_mul_p_3_4_21_0 ( i1, o1 );
  input [3:0] i1;
  output o1;


  NOR4_X1 U1 ( .A1(i1[3]), .A2(i1[2]), .A3(i1[1]), .A4(i1[0]), .ZN(o1) );
endmodule


module cf_fp_mul_p_3_4_20_0 ( i1, o1 );
  input [2:0] i1;
  output o1;


  NOR3_X1 U1 ( .A1(i1[0]), .A2(i1[1]), .A3(i1[2]), .ZN(o1) );
endmodule


module cf_fp_mul_p_3_4_19_0 ( i1, o1, o2, o3, o4, o5 );
  input [7:0] i1;
  output o1, o2, o3, o4, o5;
  wire   s21_1, s22_1, n78, n79, n80, n81, n82, n83;

  cf_fp_mul_p_3_4_21_0 s21 ( .i1(i1[3:0]), .o1(s21_1) );
  cf_fp_mul_p_3_4_20_0 s22 ( .i1(i1[6:4]), .o1(s22_1) );
  INV_X1 U1 ( .A(n82), .ZN(n78) );
  CLKBUF_X1 U2 ( .A(s21_1), .Z(n79) );
  INV_X1 U3 ( .A(s22_1), .ZN(n80) );
  NOR2_X1 U4 ( .A1(n80), .A2(s21_1), .ZN(o5) );
  INV_X1 U5 ( .A(n79), .ZN(n81) );
  NOR2_X1 U6 ( .A1(n81), .A2(n80), .ZN(o4) );
  NAND3_X1 U7 ( .A1(i1[4]), .A2(i1[6]), .A3(i1[5]), .ZN(n83) );
  NOR2_X1 U8 ( .A1(n81), .A2(n83), .ZN(o3) );
  NOR3_X1 U9 ( .A1(n79), .A2(n78), .A3(n83), .ZN(o2) );
  INV_X1 U10 ( .A(i1[3]), .ZN(n82) );
  NOR2_X1 U11 ( .A1(n83), .A2(n82), .ZN(o1) );
endmodule


module cf_fp_mul_p_3_4_21_5 ( i1, o1 );
  input [3:0] i1;
  output o1;


  NOR4_X1 U1 ( .A1(i1[0]), .A2(i1[2]), .A3(i1[1]), .A4(i1[3]), .ZN(o1) );
endmodule


module cf_fp_mul_p_3_4_20_1 ( i1, o1 );
  input [2:0] i1;
  output o1;


  NOR3_X1 U1 ( .A1(i1[2]), .A2(i1[1]), .A3(i1[0]), .ZN(o1) );
endmodule


module cf_fp_mul_p_3_4_19_1 ( i1, o1, o2, o3, o4, o5 );
  input [7:0] i1;
  output o1, o2, o3, o4, o5;
  wire   s21_1, s22_1, n58, n59, n60, n61, n62;

  cf_fp_mul_p_3_4_21_5 s21 ( .i1(i1[3:0]), .o1(s21_1) );
  cf_fp_mul_p_3_4_20_1 s22 ( .i1(i1[6:4]), .o1(s22_1) );
  CLKBUF_X1 U1 ( .A(s21_1), .Z(n58) );
  INV_X1 U2 ( .A(s22_1), .ZN(n59) );
  NOR2_X1 U3 ( .A1(s21_1), .A2(n59), .ZN(o5) );
  INV_X1 U4 ( .A(n58), .ZN(n60) );
  NOR2_X1 U5 ( .A1(n60), .A2(n59), .ZN(o4) );
  NAND3_X1 U6 ( .A1(i1[5]), .A2(i1[6]), .A3(i1[4]), .ZN(n62) );
  NOR2_X1 U7 ( .A1(n60), .A2(n62), .ZN(o3) );
  NOR3_X1 U8 ( .A1(n58), .A2(i1[3]), .A3(n62), .ZN(o2) );
  INV_X1 U9 ( .A(i1[3]), .ZN(n61) );
  NOR2_X1 U10 ( .A1(n62), .A2(n61), .ZN(o1) );
endmodule


module cf_fp_mul_p_3_4_18_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [4:0] A;
  input [4:0] B;
  output [9:0] PRODUCT;
  input TC;
  wire   \ab[4][0] , \CARRYB[4][0] , \CARRYB[3][0] , \CARRYB[2][0] ,
         \SUMB[3][1] , n4, n33, n34, n1703, n1704, n1705, n1706, n1707, n1708,
         n1709, n1710, n1711, n1712, n1713, n1714, n1715, n1716, n1717, n1718,
         n1719, n1720, n1721, n1722, n1723, n1724, n1725, n1726, n1727, n1728,
         n1729, n1730, n1731, n1732, n1733, n1734, n1735, n1736, n1737, n1738,
         n1739, n1740, n1741, n1742, n1743, n1744, n1745, n1746, n1747, n1748,
         n1749, n1750, n1751, n1752, n1753, n1754, n1755, n1756, n1757, n1758,
         n1759, n1760, n1761, n1762, n1763, n1764, n1765, n1766, n1767, n1768,
         n1769, n1770, n1771, n1772, n1773, n1774, n1775, n1776, n1777, n1778,
         n1779, n1780, n1781, n1782, n1783, n1784, n1785, n1786, n1787, n1788,
         n1789, n1790, n1791, n1792, n1793, n1794, n1795, n1796, n1797, n1798,
         n1799, n1800, n1801, n1802, n1803, n1804, n1805, n1806, n1807, n1808,
         n1809, n1810, n1811, n1812, n1813, n1814, n1815, n1816, n1817, n1818,
         n1819, n1820, n1821, n1822, n1823, n1824, n1825, n1826, n1827, n1828,
         n1829, n1830, n1831, n1832, n1833, n1834, n1835, n1836, n1837, n1838,
         n1839, n1840, n1841, n1842, n1843, n1844, n1845, n1846, n1847, n1848,
         n1849, n1850, n1851, n1852, n1853, n1854, n1855, n1856, n1857, n1858,
         n1859, n1860, n1861, n1862, n1863, n1864, n1865, n1866, n1867, n1868,
         n1869, n1870, n1871, n1872, n1873, n1874, n1875, n1876, n1877, n1878,
         n1879, n1880, n1881, n1882, n1883, n1884, n1885, n1886, n1887, n1888,
         n1889, n1890, n1891, n1892, n1893, n1894, n1895, n1896, n1897, n1898,
         n1899, n1900, n1901, n1902, n1903, n1904, n1905, n1906, n1907, n1908,
         n1909, n1910, n1911, n1912, n1913, n1914, n1915, n1916, n1917, n1918,
         n1919, n1920, n1921, n1922, n1923, n1924, n1925, n1926, n1927, n1928,
         n1929, n1930, n1931, n1932, n1933, n1934;

  FA_X1 S4_0 ( .A(\CARRYB[3][0] ), .B(\ab[4][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(PRODUCT[4]) );
  FA_X1 S1_2_0 ( .A(n4), .B(n33), .CI(n34), .CO(\CARRYB[2][0] ), .S(PRODUCT[2]) );
  AND2_X1 U2 ( .A1(n1730), .A2(n1723), .ZN(n1703) );
  AND2_X1 U3 ( .A1(n1780), .A2(A[1]), .ZN(n1704) );
  AND3_X1 U4 ( .A1(n1828), .A2(n1806), .A3(n1713), .ZN(n1729) );
  XNOR2_X1 U5 ( .A(n1826), .B(n1900), .ZN(n1705) );
  INV_X1 U6 ( .A(n1705), .ZN(n1858) );
  XNOR2_X1 U7 ( .A(n1808), .B(n1886), .ZN(PRODUCT[5]) );
  AND3_X1 U8 ( .A1(n1706), .A2(n1812), .A3(n1727), .ZN(n1740) );
  NAND2_X1 U9 ( .A1(n1755), .A2(n1704), .ZN(n1706) );
  OR2_X1 U10 ( .A1(B[4]), .A2(n1809), .ZN(n1800) );
  OR2_X1 U11 ( .A1(n1792), .A2(n1716), .ZN(n1731) );
  CLKBUF_X1 U12 ( .A(B[4]), .Z(n1739) );
  CLKBUF_X1 U13 ( .A(B[3]), .Z(n1711) );
  CLKBUF_X1 U14 ( .A(B[2]), .Z(n1707) );
  CLKBUF_X1 U15 ( .A(A[3]), .Z(n1708) );
  CLKBUF_X1 U16 ( .A(n1708), .Z(n1709) );
  CLKBUF_X1 U17 ( .A(A[4]), .Z(n1710) );
  XNOR2_X1 U18 ( .A(n1763), .B(n1790), .ZN(n1926) );
  CLKBUF_X1 U19 ( .A(B[4]), .Z(n1755) );
  BUF_X1 U20 ( .A(A[2]), .Z(n1712) );
  INV_X1 U21 ( .A(n1927), .ZN(n1713) );
  OR2_X1 U22 ( .A1(n1809), .A2(n1755), .ZN(n1815) );
  CLKBUF_X1 U23 ( .A(n1830), .Z(n1714) );
  CLKBUF_X1 U24 ( .A(n1852), .Z(n1715) );
  INV_X1 U25 ( .A(n1769), .ZN(n1716) );
  INV_X1 U26 ( .A(n1716), .ZN(n1717) );
  AND2_X1 U27 ( .A1(A[3]), .A2(n1711), .ZN(n1900) );
  INV_X1 U28 ( .A(n1900), .ZN(n1718) );
  BUF_X1 U29 ( .A(n1910), .Z(n1719) );
  BUF_X1 U30 ( .A(n1910), .Z(n1756) );
  NAND2_X1 U31 ( .A1(n1866), .A2(n1897), .ZN(n1895) );
  INV_X1 U32 ( .A(n1729), .ZN(n1866) );
  NAND2_X1 U33 ( .A1(n1834), .A2(n1830), .ZN(n1720) );
  CLKBUF_X1 U34 ( .A(n1875), .Z(n1721) );
  AND2_X1 U35 ( .A1(n1731), .A2(n1816), .ZN(n1722) );
  CLKBUF_X1 U36 ( .A(A[4]), .Z(n1723) );
  CLKBUF_X1 U37 ( .A(n1793), .Z(n1724) );
  CLKBUF_X1 U38 ( .A(B[4]), .Z(n1754) );
  XNOR2_X1 U39 ( .A(n1725), .B(n1934), .ZN(\SUMB[3][1] ) );
  XNOR2_X1 U40 ( .A(n1931), .B(n1932), .ZN(n1725) );
  AND3_X1 U41 ( .A1(n1758), .A2(n1804), .A3(n1803), .ZN(n1726) );
  NOR2_X1 U42 ( .A1(A[4]), .A2(n1814), .ZN(n1727) );
  XNOR2_X1 U43 ( .A(n1705), .B(n1728), .ZN(n1869) );
  NOR2_X1 U44 ( .A1(n1833), .A2(n1737), .ZN(n1728) );
  AND2_X1 U45 ( .A1(n1800), .A2(n1708), .ZN(n1730) );
  OR2_X1 U46 ( .A1(n1833), .A2(n1737), .ZN(n1732) );
  INV_X1 U47 ( .A(n1809), .ZN(n1733) );
  NAND2_X1 U48 ( .A1(n1710), .A2(n1734), .ZN(n1811) );
  NOR2_X1 U49 ( .A1(n1739), .A2(n1733), .ZN(n1734) );
  BUF_X1 U50 ( .A(n1927), .Z(n1735) );
  XNOR2_X1 U51 ( .A(n1877), .B(n1736), .ZN(n1857) );
  NAND2_X1 U52 ( .A1(A[4]), .A2(n1711), .ZN(n1736) );
  AND3_X1 U53 ( .A1(n1885), .A2(n1719), .A3(n1898), .ZN(n1894) );
  NAND2_X1 U54 ( .A1(n1738), .A2(n1720), .ZN(n1737) );
  OAI21_X1 U55 ( .B1(n1843), .B2(n1842), .A(n1740), .ZN(n1738) );
  XNOR2_X1 U56 ( .A(n1741), .B(n1930), .ZN(n1785) );
  NAND2_X1 U57 ( .A1(n1783), .A2(n1745), .ZN(n1741) );
  INV_X1 U58 ( .A(n1883), .ZN(n1742) );
  AND3_X1 U59 ( .A1(n1890), .A2(n1835), .A3(n1891), .ZN(n1743) );
  AND3_X1 U60 ( .A1(n1742), .A2(n1835), .A3(n1891), .ZN(n1744) );
  NAND2_X1 U61 ( .A1(n1792), .A2(n1715), .ZN(n1745) );
  XNOR2_X1 U62 ( .A(n1827), .B(n1858), .ZN(n1897) );
  NAND2_X1 U63 ( .A1(n1722), .A2(n1703), .ZN(n1823) );
  AND2_X1 U64 ( .A1(n1873), .A2(\CARRYB[4][0] ), .ZN(n1746) );
  NOR2_X1 U65 ( .A1(n1744), .A2(n1746), .ZN(n1874) );
  XNOR2_X1 U66 ( .A(n1781), .B(n1841), .ZN(n1867) );
  OAI222_X1 U67 ( .A1(n1747), .A2(n1889), .B1(n1888), .B2(n1887), .C1(n1886), 
        .C2(n1726), .ZN(n1908) );
  NAND2_X1 U68 ( .A1(n1731), .A2(n1815), .ZN(n1776) );
  OR2_X1 U69 ( .A1(n1729), .A2(n1867), .ZN(n1891) );
  AOI211_X1 U70 ( .C1(n1729), .C2(n1898), .A(n1756), .B(n1896), .ZN(n1905) );
  OR2_X1 U71 ( .A1(n1883), .A2(n1756), .ZN(n1888) );
  AOI21_X1 U72 ( .B1(n1882), .B2(n1896), .A(n1756), .ZN(n1889) );
  INV_X1 U73 ( .A(\CARRYB[4][0] ), .ZN(n1886) );
  AND3_X1 U74 ( .A1(n1719), .A2(n1898), .A3(n1884), .ZN(n1747) );
  AND2_X1 U75 ( .A1(n1931), .A2(n1796), .ZN(n1748) );
  AND2_X1 U76 ( .A1(n1721), .A2(n1751), .ZN(n1749) );
  INV_X1 U77 ( .A(n1749), .ZN(n1878) );
  XNOR2_X1 U78 ( .A(n1789), .B(n1787), .ZN(n1763) );
  NAND2_X1 U79 ( .A1(n1844), .A2(n1851), .ZN(n1772) );
  NAND2_X1 U80 ( .A1(n1810), .A2(n1811), .ZN(n1834) );
  INV_X1 U81 ( .A(n1852), .ZN(n1809) );
  XNOR2_X1 U82 ( .A(n1857), .B(n1901), .ZN(n1860) );
  AND2_X1 U83 ( .A1(A[0]), .A2(A[1]), .ZN(n1750) );
  INV_X1 U84 ( .A(A[2]), .ZN(n1769) );
  NAND2_X1 U85 ( .A1(n1709), .A2(n1816), .ZN(n1777) );
  AND2_X1 U86 ( .A1(n1711), .A2(n1855), .ZN(n1751) );
  AND2_X1 U87 ( .A1(A[2]), .A2(B[3]), .ZN(n1752) );
  NAND2_X1 U88 ( .A1(n1709), .A2(n1773), .ZN(n1770) );
  AND2_X1 U89 ( .A1(B[0]), .A2(n1709), .ZN(n1753) );
  NOR3_X1 U90 ( .A1(n1914), .A2(n1912), .A3(n1902), .ZN(n1903) );
  NAND2_X1 U91 ( .A1(n1867), .A2(n1835), .ZN(n1836) );
  INV_X1 U92 ( .A(n1909), .ZN(PRODUCT[8]) );
  NAND2_X1 U93 ( .A1(n1774), .A2(n1773), .ZN(n1775) );
  XNOR2_X1 U94 ( .A(n1874), .B(n1757), .ZN(PRODUCT[7]) );
  AND2_X1 U95 ( .A1(n1912), .A2(n1911), .ZN(n1757) );
  INV_X1 U96 ( .A(n1867), .ZN(n1758) );
  INV_X1 U97 ( .A(n1895), .ZN(n1837) );
  INV_X1 U98 ( .A(n1745), .ZN(n1774) );
  XNOR2_X1 U99 ( .A(n1732), .B(n1858), .ZN(n1883) );
  NAND2_X1 U100 ( .A1(n1899), .A2(n1898), .ZN(n1904) );
  XNOR2_X1 U101 ( .A(n1840), .B(n1839), .ZN(PRODUCT[6]) );
  AOI21_X1 U102 ( .B1(n1837), .B2(n1836), .A(n1743), .ZN(n1840) );
  OAI21_X1 U103 ( .B1(n1776), .B2(n1777), .A(n1775), .ZN(n1778) );
  NOR2_X1 U104 ( .A1(n1778), .A2(n1779), .ZN(n1781) );
  OAI22_X1 U105 ( .A1(n1892), .A2(n1891), .B1(n1742), .B2(n1892), .ZN(n1907)
         );
  NAND2_X1 U106 ( .A1(n1884), .A2(n1891), .ZN(n1887) );
  OAI211_X1 U107 ( .C1(n1908), .C2(n1907), .A(n1916), .B(n1906), .ZN(n1909) );
  AOI21_X1 U108 ( .B1(n1904), .B2(n1905), .A(n1903), .ZN(n1906) );
  INV_X1 U109 ( .A(n1897), .ZN(n1899) );
  NAND4_X1 U110 ( .A1(n1739), .A2(n1816), .A3(n1712), .A4(n1723), .ZN(n1810)
         );
  NAND2_X1 U111 ( .A1(B[0]), .A2(A[0]), .ZN(n1919) );
  INV_X1 U112 ( .A(n1919), .ZN(PRODUCT[0]) );
  INV_X1 U113 ( .A(A[0]), .ZN(n1782) );
  INV_X1 U114 ( .A(B[1]), .ZN(n1759) );
  NOR2_X1 U115 ( .A1(n1782), .A2(n1759), .ZN(n1761) );
  INV_X1 U116 ( .A(A[1]), .ZN(n1854) );
  INV_X1 U117 ( .A(B[0]), .ZN(n1928) );
  NOR2_X1 U118 ( .A1(n1854), .A2(n1928), .ZN(n1760) );
  XOR2_X1 U119 ( .A(n1761), .B(n1760), .Z(PRODUCT[1]) );
  NAND2_X1 U120 ( .A1(B[2]), .A2(A[0]), .ZN(n1767) );
  INV_X1 U121 ( .A(n1767), .ZN(n1922) );
  NAND2_X1 U122 ( .A1(B[1]), .A2(A[1]), .ZN(n1920) );
  INV_X1 U123 ( .A(n1920), .ZN(n1921) );
  NAND2_X1 U124 ( .A1(n1922), .A2(n1921), .ZN(n1789) );
  NAND2_X1 U125 ( .A1(A[2]), .A2(B[1]), .ZN(n1787) );
  NAND2_X1 U126 ( .A1(A[0]), .A2(B[3]), .ZN(n1762) );
  NAND2_X1 U127 ( .A1(B[2]), .A2(A[1]), .ZN(n1765) );
  NAND2_X1 U128 ( .A1(n1762), .A2(n1765), .ZN(n1786) );
  OAI21_X1 U129 ( .B1(n1762), .B2(n1765), .A(n1786), .ZN(n1790) );
  INV_X1 U130 ( .A(n1926), .ZN(n1923) );
  XOR2_X1 U131 ( .A(\CARRYB[2][0] ), .B(n1923), .Z(n1764) );
  XOR2_X1 U132 ( .A(n1753), .B(n1764), .Z(PRODUCT[3]) );
  INV_X1 U133 ( .A(n1765), .ZN(n1766) );
  NAND3_X1 U134 ( .A1(n1766), .A2(n1712), .A3(n1711), .ZN(n1768) );
  NAND2_X1 U135 ( .A1(n1768), .A2(n1767), .ZN(n1816) );
  INV_X1 U136 ( .A(n1816), .ZN(n1844) );
  INV_X1 U137 ( .A(n1708), .ZN(n1851) );
  NAND2_X1 U138 ( .A1(n1708), .A2(n1707), .ZN(n1773) );
  NAND3_X1 U139 ( .A1(n1754), .A2(n1717), .A3(n1773), .ZN(n1771) );
  NAND3_X1 U140 ( .A1(n1771), .A2(n1772), .A3(n1770), .ZN(n1779) );
  NAND2_X1 U141 ( .A1(B[3]), .A2(A[1]), .ZN(n1852) );
  INV_X1 U142 ( .A(B[4]), .ZN(n1792) );
  OAI21_X1 U143 ( .B1(A[0]), .B2(n1854), .A(n1752), .ZN(n1813) );
  NAND2_X1 U144 ( .A1(n1792), .A2(n1752), .ZN(n1812) );
  OAI21_X1 U145 ( .B1(n1712), .B2(A[0]), .A(n1711), .ZN(n1780) );
  INV_X1 U146 ( .A(n1830), .ZN(n1841) );
  NAND2_X1 U147 ( .A1(n1852), .A2(n1782), .ZN(n1799) );
  INV_X1 U148 ( .A(n1799), .ZN(n1794) );
  NAND2_X1 U149 ( .A1(n1750), .A2(B[3]), .ZN(n1825) );
  INV_X1 U150 ( .A(n1825), .ZN(n1793) );
  OAI21_X1 U151 ( .B1(n1794), .B2(n1724), .A(n1739), .ZN(n1783) );
  NAND3_X1 U152 ( .A1(n1711), .A2(n1750), .A3(A[2]), .ZN(n1784) );
  OAI211_X1 U153 ( .C1(n1793), .C2(A[2]), .A(B[2]), .B(n1784), .ZN(n1930) );
  INV_X1 U154 ( .A(n1930), .ZN(n1801) );
  NAND2_X1 U155 ( .A1(A[3]), .A2(B[1]), .ZN(n1797) );
  NAND2_X1 U156 ( .A1(n1785), .A2(n1797), .ZN(n1828) );
  INV_X1 U157 ( .A(A[4]), .ZN(n1927) );
  INV_X1 U158 ( .A(n1786), .ZN(n1788) );
  OAI22_X1 U159 ( .A1(n1790), .A2(n1789), .B1(n1788), .B2(n1787), .ZN(n1791)
         );
  INV_X1 U160 ( .A(n1791), .ZN(n1931) );
  NAND2_X1 U161 ( .A1(n1754), .A2(n1724), .ZN(n1798) );
  NOR3_X1 U162 ( .A1(n1794), .A2(n1801), .A3(n1797), .ZN(n1795) );
  NAND3_X1 U163 ( .A1(n1795), .A2(n1798), .A3(n1815), .ZN(n1796) );
  INV_X1 U164 ( .A(n1797), .ZN(n1929) );
  NAND3_X1 U165 ( .A1(n1815), .A2(n1799), .A3(n1798), .ZN(n1933) );
  NAND3_X1 U166 ( .A1(n1933), .A2(n1801), .A3(n1929), .ZN(n1805) );
  NAND2_X1 U167 ( .A1(n1748), .A2(n1805), .ZN(n1806) );
  NAND3_X1 U168 ( .A1(n1828), .A2(n1735), .A3(n1806), .ZN(n1804) );
  NAND2_X1 U169 ( .A1(n1710), .A2(B[1]), .ZN(n1879) );
  INV_X1 U170 ( .A(n1879), .ZN(n1865) );
  INV_X1 U171 ( .A(n1828), .ZN(n1802) );
  INV_X1 U172 ( .A(n1829), .ZN(n1880) );
  AOI22_X1 U173 ( .A1(n1865), .A2(n1802), .B1(n1880), .B2(n1865), .ZN(n1803)
         );
  NAND3_X1 U174 ( .A1(n1758), .A2(n1804), .A3(n1803), .ZN(n1885) );
  NAND2_X1 U175 ( .A1(n1748), .A2(n1805), .ZN(n1829) );
  NAND2_X1 U176 ( .A1(n1828), .A2(n1829), .ZN(n1871) );
  NAND2_X1 U177 ( .A1(n1871), .A2(n1879), .ZN(n1835) );
  NAND3_X1 U178 ( .A1(n1866), .A2(n1867), .A3(n1835), .ZN(n1838) );
  INV_X1 U179 ( .A(n1838), .ZN(n1807) );
  NOR2_X1 U180 ( .A1(n1807), .A2(n1726), .ZN(n1808) );
  INV_X1 U181 ( .A(n1834), .ZN(n1824) );
  NAND2_X1 U182 ( .A1(n1708), .A2(n1800), .ZN(n1843) );
  NAND2_X1 U183 ( .A1(n1731), .A2(n1816), .ZN(n1842) );
  NAND2_X1 U184 ( .A1(n1710), .A2(n1709), .ZN(n1832) );
  INV_X1 U185 ( .A(n1832), .ZN(n1821) );
  NAND3_X1 U186 ( .A1(n1706), .A2(n1812), .A3(n1813), .ZN(n1830) );
  INV_X1 U187 ( .A(n1813), .ZN(n1814) );
  OAI21_X1 U188 ( .B1(n1842), .B2(n1843), .A(n1740), .ZN(n1868) );
  INV_X1 U189 ( .A(n1868), .ZN(n1820) );
  NAND3_X1 U190 ( .A1(n1712), .A2(n1816), .A3(n1745), .ZN(n1818) );
  OAI21_X1 U191 ( .B1(A[4]), .B2(n1708), .A(n1707), .ZN(n1817) );
  NAND2_X1 U192 ( .A1(n1818), .A2(n1817), .ZN(n1831) );
  INV_X1 U193 ( .A(n1831), .ZN(n1819) );
  AOI211_X1 U194 ( .C1(n1714), .C2(n1821), .A(n1819), .B(n1820), .ZN(n1822) );
  OAI211_X1 U195 ( .C1(n1824), .C2(n1841), .A(n1823), .B(n1822), .ZN(n1827) );
  NAND2_X1 U196 ( .A1(n1825), .A2(n1717), .ZN(n1856) );
  NAND2_X1 U197 ( .A1(n1754), .A2(n1856), .ZN(n1848) );
  INV_X1 U198 ( .A(n1848), .ZN(n1875) );
  NAND2_X1 U199 ( .A1(n1809), .A2(n1712), .ZN(n1846) );
  NAND2_X1 U200 ( .A1(n1875), .A2(n1846), .ZN(n1826) );
  INV_X1 U201 ( .A(n1718), .ZN(n1876) );
  OAI211_X1 U202 ( .C1(n1841), .C2(n1832), .A(n1823), .B(n1831), .ZN(n1833) );
  INV_X1 U203 ( .A(n1883), .ZN(n1890) );
  NAND3_X1 U204 ( .A1(n1885), .A2(n1838), .A3(\CARRYB[4][0] ), .ZN(n1839) );
  OAI222_X1 U205 ( .A1(n1841), .A2(n1844), .B1(n1843), .B2(n1842), .C1(n1841), 
        .C2(n1851), .ZN(n1845) );
  NAND2_X1 U206 ( .A1(n1707), .A2(n1845), .ZN(n1864) );
  INV_X1 U207 ( .A(n1846), .ZN(n1847) );
  AOI21_X1 U208 ( .B1(n1848), .B2(n1718), .A(n1847), .ZN(n1849) );
  NAND3_X1 U209 ( .A1(n1713), .A2(n1707), .A3(n1849), .ZN(n1863) );
  INV_X1 U210 ( .A(n1707), .ZN(n1850) );
  AOI211_X1 U211 ( .C1(n1715), .C2(n1851), .A(n1927), .B(n1850), .ZN(n1853) );
  NAND2_X1 U212 ( .A1(n1714), .A2(n1853), .ZN(n1859) );
  NAND2_X1 U213 ( .A1(n1754), .A2(n1709), .ZN(n1877) );
  OAI21_X1 U214 ( .B1(n1854), .B2(n1717), .A(n1718), .ZN(n1855) );
  NAND3_X1 U215 ( .A1(n1739), .A2(n1856), .A3(n1751), .ZN(n1901) );
  NAND3_X1 U216 ( .A1(n1860), .A2(n1859), .A3(n1863), .ZN(n1898) );
  INV_X1 U217 ( .A(n1898), .ZN(n1893) );
  OAI21_X1 U218 ( .B1(n1864), .B2(n1858), .A(n1893), .ZN(n1911) );
  INV_X1 U219 ( .A(n1859), .ZN(n1862) );
  INV_X1 U220 ( .A(n1860), .ZN(n1861) );
  OAI21_X1 U221 ( .B1(n1862), .B2(n1705), .A(n1861), .ZN(n1881) );
  INV_X1 U222 ( .A(n1881), .ZN(n1896) );
  NAND2_X1 U223 ( .A1(n1864), .A2(n1863), .ZN(n1882) );
  NAND2_X1 U224 ( .A1(n1882), .A2(n1896), .ZN(n1912) );
  NOR2_X1 U225 ( .A1(n1865), .A2(n1867), .ZN(n1872) );
  NAND2_X1 U226 ( .A1(n1729), .A2(n1867), .ZN(n1870) );
  AOI22_X1 U227 ( .A1(n1872), .A2(n1871), .B1(n1870), .B2(n1869), .ZN(n1873)
         );
  NAND2_X1 U228 ( .A1(n1739), .A2(n1710), .ZN(n1902) );
  INV_X1 U229 ( .A(n1902), .ZN(n1913) );
  OAI33_X1 U230 ( .A1(n1878), .A2(n1913), .A3(n1877), .B1(n1902), .B2(n1876), 
        .B3(n1749), .ZN(n1910) );
  NAND2_X1 U231 ( .A1(n1879), .A2(n1880), .ZN(n1884) );
  INV_X1 U232 ( .A(n1719), .ZN(n1892) );
  NAND3_X1 U233 ( .A1(n1894), .A2(n1895), .A3(\CARRYB[4][0] ), .ZN(n1916) );
  NAND2_X1 U234 ( .A1(n1901), .A2(n1718), .ZN(n1914) );
  NAND3_X1 U235 ( .A1(n1743), .A2(n1756), .A3(n1911), .ZN(n1918) );
  INV_X1 U236 ( .A(n1912), .ZN(n1915) );
  OAI21_X1 U237 ( .B1(n1915), .B2(n1914), .A(n1913), .ZN(n1917) );
  NAND3_X1 U238 ( .A1(n1916), .A2(n1918), .A3(n1917), .ZN(PRODUCT[9]) );
  NOR2_X1 U239 ( .A1(n1769), .A2(n1928), .ZN(n4) );
  NOR2_X1 U240 ( .A1(n1920), .A2(n1919), .ZN(n33) );
  XOR2_X1 U241 ( .A(n1922), .B(n1921), .Z(n34) );
  INV_X1 U242 ( .A(\CARRYB[2][0] ), .ZN(n1925) );
  OAI21_X1 U243 ( .B1(\CARRYB[2][0] ), .B2(n1923), .A(n1753), .ZN(n1924) );
  OAI21_X1 U244 ( .B1(n1925), .B2(n1926), .A(n1924), .ZN(\CARRYB[3][0] ) );
  NOR2_X1 U245 ( .A1(n1928), .A2(n1735), .ZN(\ab[4][0] ) );
  XOR2_X1 U246 ( .A(n1930), .B(n1929), .Z(n1932) );
  INV_X1 U247 ( .A(n1933), .ZN(n1934) );
endmodule


module cf_fp_mul_p_3_4_18 ( i1, i2, o1, o2, o3, o4, o5, o6, o7 );
  input [7:0] i1;
  input [7:0] i2;
  output [3:0] o6;
  output [9:0] o7;
  output o1, o2, o3, o4, o5;
  wire   s29_2, s29_1, s28_2, s28_1, s29_3, s28_4, s29_4, s28_3, s29_5, s28_5,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365;

  XOR2_X1 U31 ( .A(i2[7]), .B(i1[7]), .Z(o5) );
  cf_fp_mul_p_3_4_19_0 s28 ( .i1(i2), .o1(s28_1), .o2(s28_2), .o3(s28_3), .o4(
        s28_4), .o5(s28_5) );
  cf_fp_mul_p_3_4_19_1 s29 ( .i1(i1), .o1(s29_1), .o2(s29_2), .o3(s29_3), .o4(
        s29_4), .o5(s29_5) );
  cf_fp_mul_p_3_4_18_DW02_mult_0 mult_1018 ( .A({n365, i1[3:0]}), .B({n364, 
        i2[3:2], n338, n337}), .TC(1'b0), .PRODUCT(o7) );
  INV_X1 U3 ( .A(s29_5), .ZN(n365) );
  INV_X1 U4 ( .A(n348), .ZN(n334) );
  INV_X1 U5 ( .A(n340), .ZN(n335) );
  INV_X1 U6 ( .A(n349), .ZN(n336) );
  CLKBUF_X1 U7 ( .A(i2[0]), .Z(n337) );
  BUF_X1 U8 ( .A(i2[1]), .Z(n338) );
  XNOR2_X1 U9 ( .A(n353), .B(n359), .ZN(o6[3]) );
  AND2_X1 U10 ( .A1(n351), .A2(n353), .ZN(n358) );
  INV_X1 U11 ( .A(s28_5), .ZN(n364) );
  INV_X1 U12 ( .A(i1[4]), .ZN(n340) );
  XOR2_X1 U13 ( .A(n340), .B(i2[4]), .Z(o6[0]) );
  INV_X1 U14 ( .A(i2[4]), .ZN(n350) );
  XOR2_X1 U15 ( .A(n350), .B(n336), .Z(n346) );
  INV_X1 U16 ( .A(n346), .ZN(n344) );
  NAND3_X1 U17 ( .A1(i1[5]), .A2(n335), .A3(n350), .ZN(n345) );
  INV_X1 U18 ( .A(n345), .ZN(n342) );
  INV_X1 U19 ( .A(i1[5]), .ZN(n339) );
  OAI21_X1 U20 ( .B1(i2[4]), .B2(n340), .A(n339), .ZN(n341) );
  INV_X1 U21 ( .A(n341), .ZN(n347) );
  NOR2_X1 U22 ( .A1(n342), .A2(n347), .ZN(n343) );
  XOR2_X1 U23 ( .A(n344), .B(n343), .Z(o6[1]) );
  OAI21_X1 U24 ( .B1(n346), .B2(n347), .A(n345), .ZN(n354) );
  INV_X1 U25 ( .A(n354), .ZN(n356) );
  NAND3_X1 U26 ( .A1(n336), .A2(i2[4]), .A3(n334), .ZN(n351) );
  INV_X1 U27 ( .A(i2[5]), .ZN(n349) );
  INV_X1 U28 ( .A(i2[6]), .ZN(n348) );
  OAI21_X1 U29 ( .B1(n350), .B2(n349), .A(n348), .ZN(n353) );
  XOR2_X1 U30 ( .A(i1[6]), .B(n358), .Z(n352) );
  XOR2_X1 U32 ( .A(n356), .B(n352), .Z(o6[2]) );
  NAND2_X1 U33 ( .A1(i1[6]), .A2(n354), .ZN(n357) );
  INV_X1 U34 ( .A(i1[6]), .ZN(n355) );
  AOI22_X1 U35 ( .A1(n358), .A2(n357), .B1(n356), .B2(n355), .ZN(n359) );
  INV_X1 U36 ( .A(s29_4), .ZN(n363) );
  INV_X1 U37 ( .A(s28_4), .ZN(n361) );
  NAND2_X1 U38 ( .A1(n363), .A2(n361), .ZN(o4) );
  INV_X1 U39 ( .A(s29_3), .ZN(n360) );
  INV_X1 U40 ( .A(s28_3), .ZN(n362) );
  NAND2_X1 U41 ( .A1(n360), .A2(n362), .ZN(o3) );
  OAI22_X1 U42 ( .A1(n363), .A2(n362), .B1(n361), .B2(n360), .ZN(o2) );
  OR4_X1 U43 ( .A1(s28_2), .A2(s28_1), .A3(s29_2), .A4(s29_1), .ZN(o1) );
endmodule


module cf_fp_mul_p_3_4_17 ( i1, i2, i3, i4, o1 );
  input [3:0] i1;
  input [2:0] i2;
  input [2:0] i3;
  input [2:0] i4;
  output [2:0] o1;
  wire   n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193;

  CLKBUF_X1 U1 ( .A(i1[1]), .Z(n180) );
  CLKBUF_X1 U2 ( .A(n184), .Z(n181) );
  NAND4_X1 U3 ( .A1(n189), .A2(i3[0]), .A3(i1[0]), .A4(n184), .ZN(n187) );
  INV_X1 U4 ( .A(i1[3]), .ZN(n184) );
  OAI211_X1 U5 ( .C1(n187), .C2(n180), .A(n186), .B(n185), .ZN(o1[0]) );
  AND3_X1 U6 ( .A1(n180), .A2(n189), .A3(n181), .ZN(n182) );
  NAND2_X1 U7 ( .A1(i2[0]), .A2(n192), .ZN(n186) );
  AND4_X1 U8 ( .A1(i1[0]), .A2(n189), .A3(n188), .A4(n181), .ZN(n183) );
  NAND2_X1 U9 ( .A1(i4[0]), .A2(n182), .ZN(n185) );
  INV_X1 U10 ( .A(i1[2]), .ZN(n189) );
  OAI211_X1 U11 ( .C1(i1[0]), .C2(n180), .A(n189), .B(n181), .ZN(n192) );
  INV_X1 U12 ( .A(n180), .ZN(n188) );
  AOI22_X1 U13 ( .A1(i2[1]), .A2(n192), .B1(i3[1]), .B2(n183), .ZN(n191) );
  NAND4_X1 U14 ( .A1(n180), .A2(i4[1]), .A3(n184), .A4(n189), .ZN(n190) );
  NAND2_X1 U15 ( .A1(n191), .A2(n190), .ZN(o1[1]) );
  AOI222_X1 U16 ( .A1(i2[2]), .A2(n192), .B1(i4[2]), .B2(n182), .C1(i3[2]), 
        .C2(n183), .ZN(n193) );
  INV_X1 U17 ( .A(n193), .ZN(o1[2]) );
endmodule


module cf_fp_mul_p_3_4_16 ( i1, i2, i3, i4, i5, o1 );
  input [3:0] i1;
  input [2:0] i2;
  input [2:0] i3;
  input [2:0] i4;
  input [2:0] i5;
  output [2:0] o1;
  wire   n85, n86, n87;
  wire   [2:0] s10_1;

  cf_fp_mul_p_3_4_17 s10 ( .i1(i1), .i2(i2), .i3(i3), .i4(i4), .o1(s10_1) );
  INV_X1 U1 ( .A(i1[3]), .ZN(n85) );
  OAI211_X1 U2 ( .C1(i1[1]), .C2(i1[0]), .A(i1[2]), .B(n85), .ZN(n86) );
  INV_X1 U3 ( .A(n86), .ZN(n87) );
  MUX2_X1 U4 ( .A(s10_1[0]), .B(i5[0]), .S(n87), .Z(o1[0]) );
  MUX2_X1 U5 ( .A(s10_1[1]), .B(i5[1]), .S(n87), .Z(o1[1]) );
  MUX2_X1 U6 ( .A(s10_1[2]), .B(i5[2]), .S(n87), .Z(o1[2]) );
endmodule


module cf_fp_mul_p_3_4_15 ( i1, i2, i3, i4, i5, i6, o1 );
  input [3:0] i1;
  input [2:0] i2;
  input [2:0] i3;
  input [2:0] i4;
  input [2:0] i5;
  input [2:0] i6;
  output [2:0] o1;
  wire   n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180;
  wire   [2:0] s10_1;

  cf_fp_mul_p_3_4_16 s10 ( .i1(i1), .i2(i2), .i3(i3), .i4(i4), .i5(i5), .o1(
        s10_1) );
  OR2_X1 U1 ( .A1(n173), .A2(n179), .ZN(n163) );
  NAND2_X1 U2 ( .A1(n172), .A2(n163), .ZN(o1[0]) );
  AND2_X1 U3 ( .A1(n169), .A2(n166), .ZN(n164) );
  AOI22_X1 U4 ( .A1(i6[0]), .A2(n177), .B1(i5[0]), .B2(n164), .ZN(n173) );
  NAND2_X1 U5 ( .A1(s10_1[0]), .A2(n171), .ZN(n172) );
  NAND2_X1 U6 ( .A1(i1[2]), .A2(n174), .ZN(n171) );
  NAND2_X1 U7 ( .A1(i1[3]), .A2(i1[1]), .ZN(n169) );
  INV_X1 U8 ( .A(n169), .ZN(n177) );
  INV_X1 U9 ( .A(i1[0]), .ZN(n166) );
  INV_X1 U10 ( .A(i1[3]), .ZN(n168) );
  XOR2_X1 U11 ( .A(n168), .B(i1[1]), .Z(n165) );
  NAND2_X1 U12 ( .A1(i1[2]), .A2(n165), .ZN(n179) );
  INV_X1 U13 ( .A(i1[1]), .ZN(n167) );
  NAND3_X1 U14 ( .A1(n168), .A2(n167), .A3(n166), .ZN(n170) );
  NAND2_X1 U15 ( .A1(n170), .A2(n169), .ZN(n174) );
  AOI22_X1 U16 ( .A1(i5[1]), .A2(n164), .B1(i6[1]), .B2(n177), .ZN(n176) );
  NAND2_X1 U17 ( .A1(n171), .A2(s10_1[1]), .ZN(n175) );
  OAI21_X1 U18 ( .B1(n176), .B2(n179), .A(n175), .ZN(o1[1]) );
  AOI22_X1 U19 ( .A1(i5[2]), .A2(n164), .B1(i6[2]), .B2(n177), .ZN(n180) );
  NAND2_X1 U20 ( .A1(s10_1[2]), .A2(n171), .ZN(n178) );
  OAI21_X1 U21 ( .B1(n180), .B2(n179), .A(n178), .ZN(o1[2]) );
endmodule


module cf_fp_mul_p_3_4_14 ( i1, i2, i3, i4, i5, i6, o1 );
  input [3:0] i1;
  input [2:0] i2;
  input [2:0] i3;
  input [2:0] i4;
  input [2:0] i5;
  input [2:0] i6;
  output [2:0] o1;
  wire   n114, n115, n116, n117, n118, n119, n120;
  wire   [2:0] s10_1;

  cf_fp_mul_p_3_4_15 s10 ( .i1(i1), .i2(i2), .i3(i3), .i4(i4), .i5(i5), .i6(i6), .o1(s10_1) );
  INV_X1 U1 ( .A(i1[1]), .ZN(n115) );
  INV_X1 U2 ( .A(i1[0]), .ZN(n114) );
  NOR2_X1 U3 ( .A1(n115), .A2(n114), .ZN(n116) );
  MUX2_X1 U4 ( .A(n116), .B(n115), .S(i1[2]), .Z(n117) );
  NAND2_X1 U5 ( .A1(i1[3]), .A2(n117), .ZN(n118) );
  INV_X1 U6 ( .A(n118), .ZN(n120) );
  MUX2_X1 U7 ( .A(s10_1[0]), .B(i6[0]), .S(n120), .Z(o1[0]) );
  AOI22_X1 U8 ( .A1(s10_1[1]), .A2(n118), .B1(i6[1]), .B2(n120), .ZN(n119) );
  INV_X1 U9 ( .A(n119), .ZN(o1[1]) );
  MUX2_X1 U10 ( .A(s10_1[2]), .B(i6[2]), .S(n120), .Z(o1[2]) );
endmodule


module cf_fp_mul_p_3_4_13 ( i1, i2, i3, i4, i5, i6, o1 );
  input [3:0] i1;
  input [2:0] i2;
  input [2:0] i3;
  input [2:0] i4;
  input [2:0] i5;
  input [2:0] i6;
  output [2:0] o1;
  wire   n100, n101, n102, n103, n104;
  wire   [2:0] s10_1;

  cf_fp_mul_p_3_4_14 s10 ( .i1(i1), .i2(i2), .i3(i3), .i4(i4), .i5(i5), .i6(i6), .o1(s10_1) );
  INV_X1 U1 ( .A(i1[1]), .ZN(n102) );
  INV_X1 U2 ( .A(i1[0]), .ZN(n101) );
  INV_X1 U3 ( .A(i1[2]), .ZN(n100) );
  OAI211_X1 U4 ( .C1(n102), .C2(n101), .A(i1[3]), .B(n100), .ZN(n103) );
  INV_X1 U5 ( .A(n103), .ZN(n104) );
  MUX2_X1 U6 ( .A(s10_1[0]), .B(i6[0]), .S(n104), .Z(o1[0]) );
  MUX2_X1 U7 ( .A(s10_1[1]), .B(i6[1]), .S(n104), .Z(o1[1]) );
  MUX2_X1 U8 ( .A(s10_1[2]), .B(i6[2]), .S(n104), .Z(o1[2]) );
endmodule


module cf_fp_mul_p_3_4_12 ( i1, i2, i3, i4, i5, i6, o1 );
  input [6:0] i1;
  input [6:0] i2;
  input [2:0] i3;
  input [6:0] i4;
  input [6:0] i5;
  input [6:0] i6;
  output [6:0] o1;
  wire   n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375;

  AND3_X1 U1 ( .A1(i3[0]), .A2(n357), .A3(n366), .ZN(n349) );
  AND2_X1 U2 ( .A1(n352), .A2(n366), .ZN(n350) );
  AND2_X1 U3 ( .A1(i3[1]), .A2(n354), .ZN(n351) );
  AND2_X1 U4 ( .A1(n356), .A2(n357), .ZN(n352) );
  AND2_X1 U5 ( .A1(i3[1]), .A2(n354), .ZN(n353) );
  AND2_X1 U6 ( .A1(i3[0]), .A2(n357), .ZN(n354) );
  AND2_X1 U7 ( .A1(n352), .A2(i3[1]), .ZN(n355) );
  INV_X1 U8 ( .A(i3[2]), .ZN(n357) );
  INV_X1 U9 ( .A(i3[0]), .ZN(n356) );
  INV_X1 U10 ( .A(i3[1]), .ZN(n366) );
  AOI22_X1 U11 ( .A1(i5[0]), .A2(n351), .B1(n350), .B2(i1[0]), .ZN(n359) );
  AOI222_X1 U12 ( .A1(i3[2]), .A2(i6[0]), .B1(i4[0]), .B2(n355), .C1(i2[0]), 
        .C2(n349), .ZN(n358) );
  NAND2_X1 U13 ( .A1(n359), .A2(n358), .ZN(o1[0]) );
  AOI22_X1 U14 ( .A1(i5[1]), .A2(n351), .B1(n350), .B2(i1[1]), .ZN(n361) );
  AOI222_X1 U15 ( .A1(i3[2]), .A2(i6[1]), .B1(i4[1]), .B2(n355), .C1(i2[1]), 
        .C2(n349), .ZN(n360) );
  NAND2_X1 U16 ( .A1(n361), .A2(n360), .ZN(o1[1]) );
  AOI22_X1 U17 ( .A1(i5[2]), .A2(n351), .B1(n350), .B2(i1[2]), .ZN(n363) );
  AOI222_X1 U18 ( .A1(i3[2]), .A2(i6[2]), .B1(i4[2]), .B2(n355), .C1(i2[2]), 
        .C2(n349), .ZN(n362) );
  NAND2_X1 U19 ( .A1(n363), .A2(n362), .ZN(o1[2]) );
  AOI22_X1 U20 ( .A1(i5[3]), .A2(n351), .B1(n350), .B2(i1[3]), .ZN(n365) );
  AOI222_X1 U21 ( .A1(i3[2]), .A2(i6[3]), .B1(i4[3]), .B2(n355), .C1(i2[3]), 
        .C2(n349), .ZN(n364) );
  NAND2_X1 U22 ( .A1(n365), .A2(n364), .ZN(o1[3]) );
  AOI22_X1 U23 ( .A1(i2[4]), .A2(n349), .B1(i3[2]), .B2(i6[4]), .ZN(n369) );
  NAND3_X1 U24 ( .A1(n352), .A2(i3[1]), .A3(i4[4]), .ZN(n368) );
  AOI22_X1 U25 ( .A1(i1[4]), .A2(n350), .B1(i5[4]), .B2(n353), .ZN(n367) );
  NAND3_X1 U26 ( .A1(n367), .A2(n368), .A3(n369), .ZN(o1[4]) );
  AOI22_X1 U27 ( .A1(i2[5]), .A2(n349), .B1(i3[2]), .B2(i6[5]), .ZN(n372) );
  NAND3_X1 U28 ( .A1(n352), .A2(i3[1]), .A3(i4[5]), .ZN(n371) );
  AOI22_X1 U29 ( .A1(i1[5]), .A2(n350), .B1(i5[5]), .B2(n353), .ZN(n370) );
  NAND3_X1 U30 ( .A1(n370), .A2(n371), .A3(n372), .ZN(o1[5]) );
  AOI22_X1 U31 ( .A1(n349), .A2(i2[6]), .B1(i3[2]), .B2(i6[6]), .ZN(n375) );
  NAND3_X1 U32 ( .A1(n352), .A2(i3[1]), .A3(i4[6]), .ZN(n374) );
  AOI22_X1 U33 ( .A1(i1[6]), .A2(n350), .B1(i5[6]), .B2(n353), .ZN(n373) );
  NAND3_X1 U34 ( .A1(n373), .A2(n374), .A3(n375), .ZN(o1[6]) );
endmodule


module cf_fp_mul_p_3_4_11 ( i1, i2, i3, i4, i5, i6, i7, o1 );
  input [3:0] i6;
  input [4:0] i7;
  output [7:0] o1;
  input i1, i2, i3, i4, i5;
  wire   i5;
  wire   [2:0] s17_1;
  assign o1[7] = i5;

  cf_fp_mul_p_3_4_13 s17 ( .i1({i1, i2, i3, i4}), .i2({1'b0, 1'b0, 1'b0}), 
        .i3({1'b0, 1'b0, 1'b1}), .i4({1'b0, 1'b1, 1'b0}), .i5({1'b0, 1'b1, 
        1'b1}), .i6({1'b1, 1'b0, 1'b0}), .o1(s17_1) );
  cf_fp_mul_p_3_4_12 s18 ( .i1({i6[2:0], i7[3:0]}), .i2({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .i3(s17_1), .i4({1'b1, 1'b1, 1'b1, 1'b0, 
        1'b0, 1'b0, 1'b0}), .i5({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), 
        .i6({1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1}), .o1(o1[6:0]) );
endmodule


module cf_fp_mul_p_3_4_21_4 ( i1, o1 );
  input [3:0] i1;
  output o1;


  NOR4_X1 U1 ( .A1(i1[3]), .A2(i1[2]), .A3(i1[1]), .A4(i1[0]), .ZN(o1) );
endmodule


module cf_fp_mul_p_3_4_10 ( i1, i2, o1, o2 );
  input [3:0] i1;
  input [8:0] i2;
  output [3:0] o1;
  output [7:0] o2;
  wire   s10_1, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314;

  cf_fp_mul_p_3_4_21_4 s10 ( .i1(i1), .o1(s10_1) );
  CLKBUF_X1 U1 ( .A(n308), .Z(n299) );
  CLKBUF_X1 U2 ( .A(n303), .Z(n300) );
  CLKBUF_X1 U3 ( .A(n303), .Z(n301) );
  CLKBUF_X1 U4 ( .A(n299), .Z(n302) );
  CLKBUF_X1 U5 ( .A(n299), .Z(n303) );
  INV_X1 U6 ( .A(n306), .ZN(n308) );
  NOR2_X1 U7 ( .A1(i1[2]), .A2(n313), .ZN(n314) );
  XOR2_X1 U8 ( .A(n314), .B(i1[3]), .Z(o1[3]) );
  OR2_X1 U9 ( .A1(s10_1), .A2(i2[8]), .ZN(n306) );
  MUX2_X1 U10 ( .A(i2[1]), .B(i2[0]), .S(n301), .Z(o2[0]) );
  MUX2_X1 U11 ( .A(i2[2]), .B(i2[1]), .S(n300), .Z(o2[1]) );
  MUX2_X1 U12 ( .A(i2[3]), .B(i2[2]), .S(n302), .Z(o2[2]) );
  MUX2_X1 U13 ( .A(i2[4]), .B(i2[3]), .S(n301), .Z(o2[3]) );
  MUX2_X1 U14 ( .A(i2[5]), .B(i2[4]), .S(n300), .Z(o2[4]) );
  MUX2_X1 U15 ( .A(i2[6]), .B(i2[5]), .S(n302), .Z(o2[5]) );
  MUX2_X1 U16 ( .A(i2[7]), .B(i2[6]), .S(n301), .Z(o2[6]) );
  INV_X1 U17 ( .A(i2[7]), .ZN(n305) );
  INV_X1 U18 ( .A(i2[8]), .ZN(n304) );
  OAI21_X1 U19 ( .B1(n305), .B2(n306), .A(n304), .ZN(o2[7]) );
  INV_X1 U20 ( .A(i1[0]), .ZN(n307) );
  NAND2_X1 U21 ( .A1(n308), .A2(n307), .ZN(n309) );
  OAI21_X1 U22 ( .B1(n300), .B2(n307), .A(n309), .ZN(o1[0]) );
  INV_X1 U23 ( .A(n309), .ZN(n311) );
  INV_X1 U24 ( .A(i1[1]), .ZN(n310) );
  NAND2_X1 U25 ( .A1(n311), .A2(n310), .ZN(n313) );
  OAI21_X1 U26 ( .B1(n310), .B2(n311), .A(n313), .ZN(o1[1]) );
  INV_X1 U27 ( .A(n313), .ZN(n312) );
  XOR2_X1 U28 ( .A(i1[2]), .B(n312), .Z(o1[2]) );
endmodule


module cf_fp_mul_p_3_4_21_3 ( i1, o1 );
  input [3:0] i1;
  output o1;


  NOR4_X1 U1 ( .A1(i1[3]), .A2(i1[1]), .A3(i1[0]), .A4(i1[2]), .ZN(o1) );
endmodule


module cf_fp_mul_p_3_4_9 ( i1, i2, o1, o2 );
  input [3:0] i1;
  input [7:0] i2;
  output [3:0] o1;
  output [6:0] o2;
  wire   s10_1, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264;

  cf_fp_mul_p_3_4_21_3 s10 ( .i1(i1), .o1(s10_1) );
  INV_X1 U1 ( .A(n256), .ZN(n253) );
  NOR2_X1 U2 ( .A1(i1[2]), .A2(n263), .ZN(n264) );
  XOR2_X1 U3 ( .A(n264), .B(i1[3]), .Z(o1[3]) );
  OR2_X1 U4 ( .A1(s10_1), .A2(i2[7]), .ZN(n256) );
  INV_X1 U5 ( .A(n256), .ZN(n258) );
  MUX2_X1 U6 ( .A(i2[1]), .B(i2[0]), .S(n253), .Z(o2[0]) );
  MUX2_X1 U7 ( .A(i2[2]), .B(i2[1]), .S(n253), .Z(o2[1]) );
  MUX2_X1 U8 ( .A(i2[3]), .B(i2[2]), .S(n258), .Z(o2[2]) );
  MUX2_X1 U9 ( .A(i2[4]), .B(i2[3]), .S(n253), .Z(o2[3]) );
  MUX2_X1 U10 ( .A(i2[5]), .B(i2[4]), .S(n253), .Z(o2[4]) );
  MUX2_X1 U11 ( .A(i2[6]), .B(i2[5]), .S(n258), .Z(o2[5]) );
  INV_X1 U12 ( .A(i2[6]), .ZN(n255) );
  INV_X1 U13 ( .A(i2[7]), .ZN(n254) );
  OAI21_X1 U14 ( .B1(n255), .B2(n256), .A(n254), .ZN(o2[6]) );
  INV_X1 U15 ( .A(i1[0]), .ZN(n257) );
  NAND2_X1 U16 ( .A1(n258), .A2(n257), .ZN(n259) );
  OAI21_X1 U17 ( .B1(n257), .B2(n253), .A(n259), .ZN(o1[0]) );
  INV_X1 U18 ( .A(n259), .ZN(n261) );
  INV_X1 U19 ( .A(i1[1]), .ZN(n260) );
  NAND2_X1 U20 ( .A1(n261), .A2(n260), .ZN(n263) );
  OAI21_X1 U21 ( .B1(n260), .B2(n261), .A(n263), .ZN(o1[1]) );
  INV_X1 U22 ( .A(n263), .ZN(n262) );
  XOR2_X1 U23 ( .A(i1[2]), .B(n262), .Z(o1[2]) );
endmodule


module cf_fp_mul_p_3_4_21_2 ( i1, o1 );
  input [3:0] i1;
  output o1;


  NOR4_X1 U1 ( .A1(i1[3]), .A2(i1[2]), .A3(i1[1]), .A4(i1[0]), .ZN(o1) );
endmodule


module cf_fp_mul_p_3_4_8 ( i1, i2, o1, o2 );
  input [3:0] i1;
  input [6:0] i2;
  output [3:0] o1;
  output [5:0] o2;
  wire   s10_1, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254;

  cf_fp_mul_p_3_4_21_2 s10 ( .i1(i1), .o1(s10_1) );
  OR2_X1 U1 ( .A1(s10_1), .A2(i2[6]), .ZN(n241) );
  INV_X1 U2 ( .A(n246), .ZN(n242) );
  INV_X1 U3 ( .A(n241), .ZN(n243) );
  NOR2_X1 U4 ( .A1(i1[2]), .A2(n253), .ZN(n254) );
  XOR2_X1 U5 ( .A(n254), .B(i1[3]), .Z(o1[3]) );
  OR2_X1 U6 ( .A1(s10_1), .A2(i2[6]), .ZN(n246) );
  INV_X1 U7 ( .A(n246), .ZN(n248) );
  MUX2_X1 U8 ( .A(i2[1]), .B(i2[0]), .S(n242), .Z(o2[0]) );
  MUX2_X1 U9 ( .A(i2[2]), .B(i2[1]), .S(n243), .Z(o2[1]) );
  MUX2_X1 U10 ( .A(i2[3]), .B(i2[2]), .S(n248), .Z(o2[2]) );
  MUX2_X1 U11 ( .A(i2[4]), .B(i2[3]), .S(n242), .Z(o2[3]) );
  MUX2_X1 U12 ( .A(i2[5]), .B(i2[4]), .S(n243), .Z(o2[4]) );
  INV_X1 U13 ( .A(i2[5]), .ZN(n245) );
  INV_X1 U14 ( .A(i2[6]), .ZN(n244) );
  OAI21_X1 U15 ( .B1(n241), .B2(n245), .A(n244), .ZN(o2[5]) );
  INV_X1 U16 ( .A(i1[0]), .ZN(n247) );
  NAND2_X1 U17 ( .A1(n248), .A2(n247), .ZN(n249) );
  OAI21_X1 U18 ( .B1(n247), .B2(n248), .A(n249), .ZN(o1[0]) );
  INV_X1 U19 ( .A(n249), .ZN(n251) );
  INV_X1 U20 ( .A(i1[1]), .ZN(n250) );
  NAND2_X1 U21 ( .A1(n251), .A2(n250), .ZN(n253) );
  OAI21_X1 U22 ( .B1(n250), .B2(n251), .A(n253), .ZN(o1[1]) );
  INV_X1 U23 ( .A(n253), .ZN(n252) );
  XOR2_X1 U24 ( .A(i1[2]), .B(n252), .Z(o1[2]) );
endmodule


module cf_fp_mul_p_3_4_21_1 ( i1, o1 );
  input [3:0] i1;
  output o1;


  NOR4_X1 U1 ( .A1(i1[3]), .A2(i1[1]), .A3(i1[0]), .A4(i1[2]), .ZN(o1) );
endmodule


module cf_fp_mul_p_3_4_7 ( i1, i2, o1, o2 );
  input [3:0] i1;
  input [5:0] i2;
  output [3:0] o1;
  output [4:0] o2;
  wire   s10_1, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216;

  cf_fp_mul_p_3_4_21_1 s10 ( .i1(i1), .o1(s10_1) );
  INV_X1 U1 ( .A(n208), .ZN(n205) );
  NOR2_X1 U2 ( .A1(i1[2]), .A2(n215), .ZN(n216) );
  XOR2_X1 U3 ( .A(n216), .B(i1[3]), .Z(o1[3]) );
  OR2_X1 U4 ( .A1(s10_1), .A2(i2[5]), .ZN(n208) );
  INV_X1 U5 ( .A(n208), .ZN(n210) );
  MUX2_X1 U6 ( .A(i2[1]), .B(i2[0]), .S(n210), .Z(o2[0]) );
  MUX2_X1 U7 ( .A(i2[2]), .B(i2[1]), .S(n210), .Z(o2[1]) );
  MUX2_X1 U8 ( .A(i2[3]), .B(i2[2]), .S(n205), .Z(o2[2]) );
  MUX2_X1 U9 ( .A(i2[4]), .B(i2[3]), .S(n210), .Z(o2[3]) );
  INV_X1 U10 ( .A(i2[4]), .ZN(n207) );
  INV_X1 U11 ( .A(i2[5]), .ZN(n206) );
  OAI21_X1 U12 ( .B1(n208), .B2(n207), .A(n206), .ZN(o2[4]) );
  INV_X1 U13 ( .A(i1[0]), .ZN(n209) );
  NAND2_X1 U14 ( .A1(n205), .A2(n209), .ZN(n211) );
  OAI21_X1 U15 ( .B1(n209), .B2(n205), .A(n211), .ZN(o1[0]) );
  INV_X1 U16 ( .A(n211), .ZN(n213) );
  INV_X1 U17 ( .A(i1[1]), .ZN(n212) );
  NAND2_X1 U18 ( .A1(n213), .A2(n212), .ZN(n215) );
  OAI21_X1 U19 ( .B1(n212), .B2(n213), .A(n215), .ZN(o1[1]) );
  INV_X1 U20 ( .A(n215), .ZN(n214) );
  XOR2_X1 U21 ( .A(i1[2]), .B(n214), .Z(o1[2]) );
endmodule


module cf_fp_mul_p_3_4_6 ( clock_c, i1, i2, i3, i4, i5, i6, i7, i8, i9, o1, o2, 
        o3, o4, o5, o6, o7 );
  input [3:0] i8;
  input [5:0] i9;
  output [3:0] o6;
  output [4:0] o7;
  input clock_c, i1, i2, i3, i4, i5, i6, i7;
  output o1, o2, o3, o4, o5;
  wire   n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n3, n16, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282;
  wire   [3:0] s8_1;
  wire   [4:0] s8_2;

  DFF_X1 n4_reg ( .D(n33), .CK(clock_c), .Q(o4), .QN(n29) );
  DFF_X1 n5_reg ( .D(n34), .CK(clock_c), .Q(o5), .QN(n28) );
  DFF_X1 \n6_reg[3]  ( .D(n35), .CK(clock_c), .Q(o6[3]), .QN(n19) );
  DFF_X1 \n7_reg[4]  ( .D(n36), .CK(clock_c), .Q(o7[4]), .QN(n27) );
  DFF_X2 \n6_reg[0]  ( .D(n41), .CK(clock_c), .Q(o6[0]), .QN(n22) );
  DFF_X2 \n6_reg[1]  ( .D(n42), .CK(clock_c), .Q(o6[1]), .QN(n21) );
  DFF_X2 \n6_reg[2]  ( .D(n43), .CK(clock_c), .Q(o6[2]), .QN(n20) );
  DFF_X2 \n7_reg[2]  ( .D(n38), .CK(clock_c), .Q(o7[2]), .QN(n25) );
  DFF_X2 \n7_reg[1]  ( .D(n39), .CK(clock_c), .Q(o7[1]), .QN(n24) );
  DFF_X2 \n7_reg[0]  ( .D(n40), .CK(clock_c), .Q(o7[0]), .QN(n23) );
  DFF_X2 \n7_reg[3]  ( .D(n37), .CK(clock_c), .Q(o7[3]), .QN(n26) );
  DFF_X2 n1_reg ( .D(n46), .CK(clock_c), .Q(o1), .QN(n32) );
  cf_fp_mul_p_3_4_7 s8 ( .i1(i8), .i2(i9), .o1(s8_1), .o2(s8_2) );
  DFF_X1 n3_reg ( .D(n44), .CK(clock_c), .Q(o3), .QN(n30) );
  DFF_X2 n2_reg ( .D(n45), .CK(clock_c), .Q(o2), .QN(n31) );
  INV_X1 U3 ( .A(n3), .ZN(n260) );
  INV_X1 U4 ( .A(n3), .ZN(n261) );
  INV_X1 U5 ( .A(n3), .ZN(n262) );
  INV_X1 U6 ( .A(n276), .ZN(n263) );
  INV_X1 U7 ( .A(n3), .ZN(n264) );
  INV_X1 U8 ( .A(n3), .ZN(n265) );
  AND2_X1 U9 ( .A1(n276), .A2(n268), .ZN(n3) );
  INV_X1 U10 ( .A(n276), .ZN(n266) );
  INV_X1 U11 ( .A(n276), .ZN(n267) );
  OAI22_X1 U12 ( .A1(n276), .A2(n275), .B1(n260), .B2(n20), .ZN(n43) );
  INV_X1 U13 ( .A(s8_1[2]), .ZN(n275) );
  OAI21_X1 U14 ( .B1(n261), .B2(n28), .A(n16), .ZN(n34) );
  NAND2_X1 U15 ( .A1(i7), .A2(n267), .ZN(n16) );
  INV_X1 U16 ( .A(i2), .ZN(n268) );
  NAND2_X1 U17 ( .A1(i1), .A2(n268), .ZN(n276) );
  NAND2_X1 U18 ( .A1(s8_2[0]), .A2(n266), .ZN(n269) );
  OAI21_X1 U19 ( .B1(n265), .B2(n23), .A(n269), .ZN(n40) );
  NAND2_X1 U20 ( .A1(s8_2[1]), .A2(n267), .ZN(n270) );
  OAI21_X1 U21 ( .B1(n262), .B2(n24), .A(n270), .ZN(n39) );
  NAND2_X1 U22 ( .A1(s8_2[2]), .A2(n263), .ZN(n271) );
  OAI21_X1 U23 ( .B1(n264), .B2(n25), .A(n271), .ZN(n38) );
  NAND2_X1 U24 ( .A1(s8_2[3]), .A2(n263), .ZN(n272) );
  OAI21_X1 U25 ( .B1(n262), .B2(n26), .A(n272), .ZN(n37) );
  NAND2_X1 U26 ( .A1(s8_1[0]), .A2(n266), .ZN(n273) );
  OAI21_X1 U27 ( .B1(n261), .B2(n22), .A(n273), .ZN(n41) );
  NAND2_X1 U28 ( .A1(s8_1[1]), .A2(n267), .ZN(n274) );
  OAI21_X1 U29 ( .B1(n260), .B2(n21), .A(n274), .ZN(n42) );
  NAND2_X1 U30 ( .A1(i6), .A2(n266), .ZN(n277) );
  OAI21_X1 U31 ( .B1(n29), .B2(n260), .A(n277), .ZN(n33) );
  NAND2_X1 U32 ( .A1(i5), .A2(n263), .ZN(n278) );
  OAI21_X1 U33 ( .B1(n30), .B2(n264), .A(n278), .ZN(n44) );
  NAND2_X1 U34 ( .A1(i4), .A2(n266), .ZN(n279) );
  OAI21_X1 U35 ( .B1(n31), .B2(n265), .A(n279), .ZN(n45) );
  NAND2_X1 U36 ( .A1(i3), .A2(n267), .ZN(n280) );
  OAI21_X1 U37 ( .B1(n32), .B2(n261), .A(n280), .ZN(n46) );
  NAND2_X1 U38 ( .A1(s8_2[4]), .A2(n263), .ZN(n281) );
  OAI21_X1 U39 ( .B1(n264), .B2(n27), .A(n281), .ZN(n36) );
  NAND2_X1 U40 ( .A1(s8_1[3]), .A2(n263), .ZN(n282) );
  OAI21_X1 U41 ( .B1(n19), .B2(n262), .A(n282), .ZN(n35) );
endmodule


module cf_fp_mul_p_3_4_5 ( clock_c, i1, i2, i3, i4, i5, i6, i7, i8, i9, o1, o2, 
        o3, o4, o5, o6, o7 );
  input [3:0] i8;
  input [6:0] i9;
  output [3:0] o6;
  output [4:0] o7;
  input clock_c, i1, i2, i3, i4, i5, i6, i7;
  output o1, o2, o3, o4, o5;
  wire   n1, n2, n3, n4, n5, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n26, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397;
  wire   [3:0] n6;
  wire   [3:0] s8_1;
  wire   [5:0] n7;
  wire   [5:0] s8_2;

  DFF_X1 n1_reg ( .D(n42), .CK(clock_c), .Q(n1), .QN(n41) );
  DFF_X1 n2_reg ( .D(n43), .CK(clock_c), .Q(n2), .QN(n40) );
  DFF_X1 n3_reg ( .D(n44), .CK(clock_c), .Q(n3), .QN(n39) );
  DFF_X1 n4_reg ( .D(n45), .CK(clock_c), .Q(n4), .QN(n38) );
  DFF_X1 n5_reg ( .D(n46), .CK(clock_c), .Q(n5), .QN(n37) );
  DFF_X1 \n6_reg[3]  ( .D(n47), .CK(clock_c), .Q(n6[3]), .QN(n27) );
  DFF_X1 \n6_reg[1]  ( .D(n48), .CK(clock_c), .Q(n6[1]), .QN(n29) );
  DFF_X1 \n7_reg[4]  ( .D(n50), .CK(clock_c), .Q(n7[4]), .QN(n34) );
  DFF_X1 \n7_reg[3]  ( .D(n51), .CK(clock_c), .Q(n7[3]), .QN(n33) );
  DFF_X1 \n7_reg[2]  ( .D(n52), .CK(clock_c), .Q(n7[2]), .QN(n32) );
  DFF_X1 \n7_reg[1]  ( .D(n53), .CK(clock_c), .Q(n7[1]), .QN(n31) );
  DFF_X1 \n7_reg[0]  ( .D(n54), .CK(clock_c), .Q(n7[0]), .QN(n35) );
  DFF_X2 \n6_reg[2]  ( .D(n56), .CK(clock_c), .Q(n6[2]), .QN(n28) );
  DFF_X2 \n6_reg[0]  ( .D(n55), .CK(clock_c), .Q(n6[0]), .QN(n30) );
  DFF_X2 \n7_reg[5]  ( .D(n49), .CK(clock_c), .Q(n7[5]), .QN(n36) );
  cf_fp_mul_p_3_4_8 s8 ( .i1(i8), .i2(i9), .o1(s8_1), .o2(s8_2) );
  cf_fp_mul_p_3_4_6 s9 ( .clock_c(clock_c), .i1(i1), .i2(i2), .i3(n1), .i4(n2), 
        .i5(n3), .i6(n4), .i7(n5), .i8(n6), .i9(n7), .o1(o1), .o2(o2), .o3(o3), 
        .o4(o4), .o5(o5), .o6(o6), .o7(o7) );
  NAND2_X1 U3 ( .A1(i1), .A2(n381), .ZN(n372) );
  NAND2_X1 U4 ( .A1(n377), .A2(n381), .ZN(n373) );
  CLKBUF_X1 U5 ( .A(n373), .Z(n374) );
  CLKBUF_X1 U6 ( .A(n373), .Z(n375) );
  INV_X1 U7 ( .A(n372), .ZN(n376) );
  INV_X1 U8 ( .A(n376), .ZN(n377) );
  INV_X1 U9 ( .A(n391), .ZN(n378) );
  INV_X1 U10 ( .A(n391), .ZN(n379) );
  CLKBUF_X1 U11 ( .A(n372), .Z(n391) );
  INV_X1 U12 ( .A(n391), .ZN(n380) );
  OAI22_X1 U13 ( .A1(n377), .A2(n390), .B1(n373), .B2(n28), .ZN(n56) );
  INV_X1 U14 ( .A(s8_1[2]), .ZN(n390) );
  OAI22_X1 U15 ( .A1(n39), .A2(n26), .B1(n377), .B2(n395), .ZN(n44) );
  INV_X1 U16 ( .A(i5), .ZN(n395) );
  OAI22_X1 U17 ( .A1(n40), .A2(n26), .B1(n372), .B2(n394), .ZN(n43) );
  INV_X1 U18 ( .A(i4), .ZN(n394) );
  OAI22_X1 U19 ( .A1(n41), .A2(n26), .B1(n377), .B2(n393), .ZN(n42) );
  INV_X1 U20 ( .A(i3), .ZN(n393) );
  OAI22_X1 U21 ( .A1(n26), .A2(n37), .B1(n372), .B2(n397), .ZN(n46) );
  INV_X1 U22 ( .A(i7), .ZN(n397) );
  OAI22_X1 U23 ( .A1(n26), .A2(n38), .B1(n391), .B2(n396), .ZN(n45) );
  INV_X1 U24 ( .A(i6), .ZN(n396) );
  OR2_X1 U25 ( .A1(i2), .A2(i1), .ZN(n26) );
  INV_X1 U26 ( .A(i2), .ZN(n381) );
  NAND2_X1 U27 ( .A1(s8_2[0]), .A2(n378), .ZN(n382) );
  OAI21_X1 U28 ( .B1(n35), .B2(n375), .A(n382), .ZN(n54) );
  NAND2_X1 U29 ( .A1(s8_2[1]), .A2(n379), .ZN(n383) );
  OAI21_X1 U30 ( .B1(n31), .B2(n374), .A(n383), .ZN(n53) );
  NAND2_X1 U31 ( .A1(s8_2[2]), .A2(n380), .ZN(n384) );
  OAI21_X1 U32 ( .B1(n32), .B2(n375), .A(n384), .ZN(n52) );
  NAND2_X1 U33 ( .A1(s8_2[3]), .A2(n378), .ZN(n385) );
  OAI21_X1 U34 ( .B1(n33), .B2(n374), .A(n385), .ZN(n51) );
  NAND2_X1 U35 ( .A1(s8_2[4]), .A2(n379), .ZN(n386) );
  OAI21_X1 U36 ( .B1(n34), .B2(n374), .A(n386), .ZN(n50) );
  NAND2_X1 U37 ( .A1(s8_2[5]), .A2(n376), .ZN(n387) );
  OAI21_X1 U38 ( .B1(n374), .B2(n36), .A(n387), .ZN(n49) );
  NAND2_X1 U39 ( .A1(s8_1[0]), .A2(n378), .ZN(n388) );
  OAI21_X1 U40 ( .B1(n373), .B2(n30), .A(n388), .ZN(n55) );
  NAND2_X1 U41 ( .A1(s8_1[1]), .A2(n379), .ZN(n389) );
  OAI21_X1 U42 ( .B1(n375), .B2(n29), .A(n389), .ZN(n48) );
  NAND2_X1 U43 ( .A1(s8_1[3]), .A2(n380), .ZN(n392) );
  OAI21_X1 U44 ( .B1(n27), .B2(n373), .A(n392), .ZN(n47) );
endmodule


module cf_fp_mul_p_3_4_4 ( clock_c, i1, i2, i3, i4, i5, i6, i7, i8, i9, o1, o2, 
        o3, o4, o5, o6, o7 );
  input [3:0] i8;
  input [7:0] i9;
  output [3:0] o6;
  output [4:0] o7;
  input clock_c, i1, i2, i3, i4, i5, i6, i7;
  output o1, o2, o3, o4, o5;
  wire   n1, n2, n3, n4, n5, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n25, n26, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471;
  wire   [3:0] n6;
  wire   [3:0] s8_1;
  wire   [6:0] n7;
  wire   [6:0] s8_2;

  DFF_X1 n1_reg ( .D(n44), .CK(clock_c), .Q(n1), .QN(n43) );
  DFF_X1 n2_reg ( .D(n45), .CK(clock_c), .Q(n2), .QN(n42) );
  DFF_X1 n3_reg ( .D(n46), .CK(clock_c), .Q(n3), .QN(n41) );
  DFF_X1 n4_reg ( .D(n47), .CK(clock_c), .Q(n4), .QN(n40) );
  DFF_X1 n5_reg ( .D(n48), .CK(clock_c), .Q(n5), .QN(n39) );
  DFF_X1 \n6_reg[3]  ( .D(n49), .CK(clock_c), .Q(n6[3]), .QN(n28) );
  DFF_X1 \n6_reg[1]  ( .D(n50), .CK(clock_c), .Q(n6[1]), .QN(n30) );
  DFF_X1 \n6_reg[0]  ( .D(n51), .CK(clock_c), .Q(n6[0]), .QN(n31) );
  DFF_X1 \n7_reg[5]  ( .D(n53), .CK(clock_c), .Q(n7[5]), .QN(n36) );
  DFF_X1 \n7_reg[4]  ( .D(n54), .CK(clock_c), .Q(n7[4]), .QN(n35) );
  DFF_X1 \n7_reg[3]  ( .D(n55), .CK(clock_c), .Q(n7[3]), .QN(n34) );
  DFF_X1 \n7_reg[2]  ( .D(n56), .CK(clock_c), .Q(n7[2]), .QN(n33) );
  DFF_X1 \n7_reg[1]  ( .D(n57), .CK(clock_c), .Q(n7[1]), .QN(n32) );
  DFF_X1 \n7_reg[0]  ( .D(n58), .CK(clock_c), .Q(n7[0]), .QN(n37) );
  DFF_X2 \n6_reg[2]  ( .D(n59), .CK(clock_c), .Q(n6[2]), .QN(n29) );
  DFF_X2 \n7_reg[6]  ( .D(n52), .CK(clock_c), .Q(n7[6]), .QN(n38) );
  cf_fp_mul_p_3_4_9 s8 ( .i1(i8), .i2(i9), .o1(s8_1), .o2(s8_2) );
  cf_fp_mul_p_3_4_5 s9 ( .clock_c(clock_c), .i1(i1), .i2(i2), .i3(n1), .i4(n2), 
        .i5(n3), .i6(n4), .i7(n5), .i8(n6), .i9(n7), .o1(o1), .o2(o2), .o3(o3), 
        .o4(o4), .o5(o5), .o6(o6), .o7(o7) );
  INV_X1 U3 ( .A(n26), .ZN(n444) );
  INV_X1 U4 ( .A(n444), .ZN(n445) );
  INV_X1 U5 ( .A(n445), .ZN(n446) );
  INV_X1 U6 ( .A(n445), .ZN(n447) );
  AND2_X1 U7 ( .A1(i1), .A2(n455), .ZN(n26) );
  INV_X1 U8 ( .A(n444), .ZN(n448) );
  INV_X1 U9 ( .A(n447), .ZN(n449) );
  INV_X1 U10 ( .A(n444), .ZN(n450) );
  CLKBUF_X1 U11 ( .A(n454), .Z(n451) );
  INV_X1 U12 ( .A(i1), .ZN(n452) );
  CLKBUF_X1 U13 ( .A(n25), .Z(n453) );
  CLKBUF_X1 U14 ( .A(n25), .Z(n454) );
  OAI22_X1 U15 ( .A1(n446), .A2(n465), .B1(n453), .B2(n29), .ZN(n59) );
  INV_X1 U16 ( .A(s8_1[2]), .ZN(n465) );
  OAI22_X1 U17 ( .A1(n40), .A2(n25), .B1(n446), .B2(n470), .ZN(n47) );
  INV_X1 U18 ( .A(i6), .ZN(n470) );
  OAI22_X1 U19 ( .A1(n41), .A2(n451), .B1(n447), .B2(n469), .ZN(n46) );
  INV_X1 U20 ( .A(i5), .ZN(n469) );
  OAI22_X1 U21 ( .A1(n42), .A2(n454), .B1(n446), .B2(n468), .ZN(n45) );
  INV_X1 U22 ( .A(i4), .ZN(n468) );
  OAI22_X1 U23 ( .A1(n43), .A2(n453), .B1(n446), .B2(n467), .ZN(n44) );
  INV_X1 U24 ( .A(i3), .ZN(n467) );
  OAI22_X1 U25 ( .A1(n39), .A2(n454), .B1(n447), .B2(n471), .ZN(n48) );
  INV_X1 U26 ( .A(i7), .ZN(n471) );
  NAND2_X1 U27 ( .A1(n452), .A2(n455), .ZN(n25) );
  INV_X1 U28 ( .A(i2), .ZN(n455) );
  NAND2_X1 U29 ( .A1(s8_2[0]), .A2(n448), .ZN(n456) );
  OAI21_X1 U30 ( .B1(n451), .B2(n37), .A(n456), .ZN(n58) );
  NAND2_X1 U31 ( .A1(s8_2[1]), .A2(n449), .ZN(n457) );
  OAI21_X1 U32 ( .B1(n451), .B2(n32), .A(n457), .ZN(n57) );
  NAND2_X1 U33 ( .A1(s8_2[2]), .A2(n450), .ZN(n458) );
  OAI21_X1 U34 ( .B1(n33), .B2(n25), .A(n458), .ZN(n56) );
  NAND2_X1 U35 ( .A1(s8_2[3]), .A2(n450), .ZN(n459) );
  OAI21_X1 U36 ( .B1(n34), .B2(n454), .A(n459), .ZN(n55) );
  NAND2_X1 U37 ( .A1(s8_2[4]), .A2(n448), .ZN(n460) );
  OAI21_X1 U38 ( .B1(n453), .B2(n35), .A(n460), .ZN(n54) );
  NAND2_X1 U39 ( .A1(s8_2[5]), .A2(n449), .ZN(n461) );
  OAI21_X1 U40 ( .B1(n453), .B2(n36), .A(n461), .ZN(n53) );
  NAND2_X1 U41 ( .A1(s8_2[6]), .A2(n450), .ZN(n462) );
  OAI21_X1 U42 ( .B1(n453), .B2(n38), .A(n462), .ZN(n52) );
  NAND2_X1 U43 ( .A1(s8_1[0]), .A2(n26), .ZN(n463) );
  OAI21_X1 U44 ( .B1(n454), .B2(n31), .A(n463), .ZN(n51) );
  NAND2_X1 U45 ( .A1(s8_1[1]), .A2(n448), .ZN(n464) );
  OAI21_X1 U46 ( .B1(n451), .B2(n30), .A(n464), .ZN(n50) );
  NAND2_X1 U47 ( .A1(s8_1[3]), .A2(n449), .ZN(n466) );
  OAI21_X1 U48 ( .B1(n28), .B2(n25), .A(n466), .ZN(n49) );
endmodule


module cf_fp_mul_p_3_4_3 ( clock_c, i1, i2, i3, i4, i5, i6, i7, i8, i9, o1, o2, 
        o3, o4, o5, o6, o7 );
  input [3:0] i8;
  input [8:0] i9;
  output [3:0] o6;
  output [4:0] o7;
  input clock_c, i1, i2, i3, i4, i5, i6, i7;
  output o1, o2, o3, o4, o5;
  wire   n1, n2, n3, n4, n5, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n26, n28, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476;
  wire   [3:0] n6;
  wire   [3:0] s8_1;
  wire   [7:0] n7;
  wire   [7:0] s8_2;

  DFF_X1 n1_reg ( .D(n46), .CK(clock_c), .Q(n1), .QN(n45) );
  DFF_X1 n2_reg ( .D(n47), .CK(clock_c), .Q(n2), .QN(n44) );
  DFF_X1 n3_reg ( .D(n48), .CK(clock_c), .Q(n3), .QN(n43) );
  DFF_X1 n4_reg ( .D(n49), .CK(clock_c), .Q(n4), .QN(n42) );
  DFF_X1 n5_reg ( .D(n50), .CK(clock_c), .Q(n5), .QN(n41) );
  DFF_X1 \n6_reg[3]  ( .D(n51), .CK(clock_c), .Q(n6[3]), .QN(n29) );
  DFF_X1 \n6_reg[1]  ( .D(n52), .CK(clock_c), .Q(n6[1]), .QN(n31) );
  DFF_X1 \n7_reg[6]  ( .D(n54), .CK(clock_c), .Q(n7[6]), .QN(n39) );
  DFF_X1 \n7_reg[5]  ( .D(n55), .CK(clock_c), .Q(n7[5]), .QN(n38) );
  DFF_X1 \n7_reg[4]  ( .D(n56), .CK(clock_c), .Q(n7[4]), .QN(n37) );
  DFF_X1 \n7_reg[3]  ( .D(n57), .CK(clock_c), .Q(n7[3]), .QN(n36) );
  DFF_X1 \n7_reg[2]  ( .D(n58), .CK(clock_c), .Q(n7[2]), .QN(n35) );
  DFF_X1 \n7_reg[1]  ( .D(n59), .CK(clock_c), .Q(n7[1]), .QN(n34) );
  DFF_X1 \n7_reg[0]  ( .D(n60), .CK(clock_c), .Q(n7[0]), .QN(n33) );
  DFF_X2 \n6_reg[2]  ( .D(n62), .CK(clock_c), .Q(n6[2]), .QN(n30) );
  DFF_X2 \n6_reg[0]  ( .D(n61), .CK(clock_c), .Q(n6[0]), .QN(n32) );
  DFF_X2 \n7_reg[7]  ( .D(n53), .CK(clock_c), .Q(n7[7]), .QN(n40) );
  cf_fp_mul_p_3_4_10 s8 ( .i1(i8), .i2(i9), .o1(s8_1), .o2(s8_2) );
  cf_fp_mul_p_3_4_4 s9 ( .clock_c(clock_c), .i1(i1), .i2(i2), .i3(n1), .i4(n2), 
        .i5(n3), .i6(n4), .i7(n5), .i8(n6), .i9(n7), .o1(o1), .o2(o2), .o3(o3), 
        .o4(o4), .o5(o5), .o6(o6), .o7(o7) );
  NAND2_X1 U3 ( .A1(n449), .A2(n459), .ZN(n447) );
  INV_X1 U4 ( .A(n453), .ZN(n448) );
  INV_X1 U5 ( .A(n26), .ZN(n449) );
  INV_X1 U6 ( .A(n26), .ZN(n450) );
  AND2_X1 U7 ( .A1(i1), .A2(n459), .ZN(n26) );
  INV_X1 U8 ( .A(n26), .ZN(n451) );
  INV_X1 U9 ( .A(n448), .ZN(n452) );
  INV_X1 U10 ( .A(n450), .ZN(n453) );
  INV_X1 U11 ( .A(n448), .ZN(n454) );
  CLKBUF_X1 U12 ( .A(n447), .Z(n455) );
  CLKBUF_X1 U13 ( .A(n447), .Z(n456) );
  CLKBUF_X1 U14 ( .A(n447), .Z(n457) );
  CLKBUF_X1 U15 ( .A(n447), .Z(n458) );
  OAI22_X1 U16 ( .A1(n449), .A2(n470), .B1(n30), .B2(n455), .ZN(n62) );
  INV_X1 U17 ( .A(s8_1[2]), .ZN(n470) );
  OAI22_X1 U18 ( .A1(n42), .A2(n28), .B1(n451), .B2(n475), .ZN(n49) );
  INV_X1 U19 ( .A(i6), .ZN(n475) );
  OAI22_X1 U20 ( .A1(n43), .A2(n28), .B1(n450), .B2(n474), .ZN(n48) );
  INV_X1 U21 ( .A(i5), .ZN(n474) );
  OAI22_X1 U22 ( .A1(n44), .A2(n28), .B1(n449), .B2(n473), .ZN(n47) );
  INV_X1 U23 ( .A(i4), .ZN(n473) );
  OAI22_X1 U24 ( .A1(n45), .A2(n28), .B1(n451), .B2(n472), .ZN(n46) );
  INV_X1 U25 ( .A(i3), .ZN(n472) );
  OAI22_X1 U26 ( .A1(n28), .A2(n41), .B1(n450), .B2(n476), .ZN(n50) );
  INV_X1 U27 ( .A(i7), .ZN(n476) );
  OR2_X1 U28 ( .A1(i2), .A2(i1), .ZN(n28) );
  INV_X1 U29 ( .A(i2), .ZN(n459) );
  NAND2_X1 U30 ( .A1(s8_2[0]), .A2(n452), .ZN(n460) );
  OAI21_X1 U31 ( .B1(n33), .B2(n458), .A(n460), .ZN(n60) );
  NAND2_X1 U32 ( .A1(s8_2[1]), .A2(n453), .ZN(n461) );
  OAI21_X1 U33 ( .B1(n34), .B2(n457), .A(n461), .ZN(n59) );
  NAND2_X1 U34 ( .A1(s8_2[2]), .A2(n454), .ZN(n462) );
  OAI21_X1 U35 ( .B1(n35), .B2(n456), .A(n462), .ZN(n58) );
  NAND2_X1 U36 ( .A1(s8_2[3]), .A2(n26), .ZN(n463) );
  OAI21_X1 U37 ( .B1(n36), .B2(n458), .A(n463), .ZN(n57) );
  NAND2_X1 U38 ( .A1(s8_2[4]), .A2(n452), .ZN(n464) );
  OAI21_X1 U39 ( .B1(n37), .B2(n457), .A(n464), .ZN(n56) );
  NAND2_X1 U40 ( .A1(s8_2[5]), .A2(n453), .ZN(n465) );
  OAI21_X1 U41 ( .B1(n38), .B2(n456), .A(n465), .ZN(n55) );
  NAND2_X1 U42 ( .A1(s8_2[6]), .A2(n454), .ZN(n466) );
  OAI21_X1 U43 ( .B1(n39), .B2(n458), .A(n466), .ZN(n54) );
  NAND2_X1 U44 ( .A1(s8_2[7]), .A2(n26), .ZN(n467) );
  OAI21_X1 U45 ( .B1(n40), .B2(n457), .A(n467), .ZN(n53) );
  NAND2_X1 U46 ( .A1(s8_1[0]), .A2(n452), .ZN(n468) );
  OAI21_X1 U47 ( .B1(n32), .B2(n456), .A(n468), .ZN(n61) );
  NAND2_X1 U48 ( .A1(s8_1[1]), .A2(n453), .ZN(n469) );
  OAI21_X1 U49 ( .B1(n31), .B2(n455), .A(n469), .ZN(n52) );
  NAND2_X1 U50 ( .A1(s8_1[3]), .A2(n454), .ZN(n471) );
  OAI21_X1 U51 ( .B1(n29), .B2(n455), .A(n471), .ZN(n51) );
endmodule


module cf_fp_mul_p_3_4_2 ( clock_c, i1, i2, i3, i4, o1 );
  input [7:0] i3;
  input [7:0] i4;
  output [7:0] o1;
  input clock_c, i1, i2;
  wire   s25_1, s25_2, s25_3, s25_4, s25_5, n17, n18, n19, n20, n21, s27_1,
         s27_2, s27_3, s27_4, s27_5, n55, n56, n57, n58, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n27, n71, n80, n82, n103, n104, n105, n106, n107,
         n108, n109, n111, n114, n116, n118, n120, n122, n124, n126, n128,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n99, n94,
         n95, n96, n97, n98, n874, n914, n922, n924, n926, n929, n930, n931,
         n93, n127, n1812, n1816, n1825, n79, n81, n83, n101, n102, n110, n112,
         n113, n115, n117, n119, n121, n123, n125, n129, n157, n158, n159,
         n160, n161, n1902, n1903, n1904, n1905, n1906, n1907, n1908, n1909,
         n1910, n1911, n1912, n1913, n1914, n1915, n1916, n1917, n1918, n1919,
         n1920, n1921, n1922, n1923, n1924, n1925, n1926, n1927, n1928, n1929,
         n1930, n1931, n1932, n1933, n1934, n1935, n1936, n1937, n1938, n1939,
         n1940, n1941, n1942, n1943, n1944, n1945, n1946, n1947, n1948, n1949,
         n1950, n1951, n1952, n1953, n1954, n1955, n1956, n1957, n1958, n1959,
         n1960, n1961, n1962, n1963, n1964, n1965, n1966, n1967, n1968, n1969,
         n1970, n1971, n1972, n1973, n1974, n1975, n1976, n1977, n1978, n1979,
         n1980, n1981, n1982, n1983, n1984, n1985, n1986, n1987, n1988, n1989,
         n1990, n1991, n1992, n1993, n1994, n1995, n1996, n1997, n1998, n1999,
         n2000, n2001, n2002, n2003, n2004, n2005, n2006, n2007, n2008, n2009,
         n2010, n2011, n2012, n2013, n2014, n2015, n2016, n2017, n2018, n2019,
         n2020, n2021, n2022, n2023, n2024, n2025, n2026, n2027, n2028, n2029,
         n2030, n2031, n2032, n2033, n2034, n2035, n2036;
  wire   [7:0] n1;
  wire   [7:0] n2;
  wire   [3:0] s25_6;
  wire   [9:0] s25_7;
  wire   [3:0] n22;
  wire   [8:0] n23;
  wire   [7:0] s26_1;
  wire   [3:0] s27_6;
  wire   [4:0] s27_7;

  DFF_X1 \n1_reg[7]  ( .D(n174), .CK(clock_c), .Q(n1[7]), .QN(n172) );
  DFF_X1 \n2_reg[7]  ( .D(n178), .CK(clock_c), .Q(n2[7]), .QN(n139) );
  DFF_X1 \n2_reg[6]  ( .D(n179), .CK(clock_c), .Q(n2[6]), .QN(n138) );
  DFF_X1 n17_reg ( .D(n156), .CK(clock_c), .Q(n17), .QN(n135) );
  DFF_X1 n18_reg ( .D(n155), .CK(clock_c), .Q(n18), .QN(n134) );
  DFF_X1 n19_reg ( .D(n154), .CK(clock_c), .Q(n19), .QN(n133) );
  DFF_X1 n20_reg ( .D(n153), .CK(clock_c), .Q(n20), .QN(n132) );
  DFF_X1 n21_reg ( .D(n152), .CK(clock_c), .Q(n21), .QN(n131) );
  DFF_X1 \n22_reg[3]  ( .D(n151), .CK(clock_c), .Q(n22[3]), .QN(n55) );
  DFF_X1 \n22_reg[1]  ( .D(n190), .CK(clock_c), .Q(n22[1]), .QN(n111) );
  DFF_X1 \n23_reg[6]  ( .D(n146), .CK(clock_c), .Q(n23[6]), .QN(n126) );
  DFF_X1 \n23_reg[5]  ( .D(n145), .CK(clock_c), .Q(n23[5]), .QN(n124) );
  DFF_X1 \n23_reg[4]  ( .D(n144), .CK(clock_c), .Q(n23[4]), .QN(n122) );
  DFF_X1 \n23_reg[3]  ( .D(n143), .CK(clock_c), .Q(n23[3]), .QN(n120) );
  DFF_X1 \n23_reg[2]  ( .D(n142), .CK(clock_c), .Q(n23[2]), .QN(n118) );
  DFF_X1 \n23_reg[1]  ( .D(n141), .CK(clock_c), .Q(n23[1]), .QN(n116) );
  DFF_X1 \n23_reg[0]  ( .D(n140), .CK(clock_c), .Q(n23[0]), .QN(n114) );
  DFF_X1 \n24_reg[7]  ( .D(n191), .CK(clock_c), .Q(o1[7]), .QN(n130) );
  DFF_X2 \n22_reg[2]  ( .D(n150), .CK(clock_c), .Q(n22[2]), .QN(n56) );
  DFF_X2 \n22_reg[0]  ( .D(n149), .CK(clock_c), .Q(n22[0]), .QN(n57) );
  DFF_X2 \n8_reg[0]  ( .D(n2034), .CK(clock_c), .Q(n931), .QN(n1972) );
  DFF_X1 \n2_reg[0]  ( .D(n199), .CK(clock_c), .Q(n2[0]), .QN(n82) );
  DFF_X2 \n8_reg[1]  ( .D(n101), .CK(clock_c), .Q(n1968), .QN(n874) );
  DFF_X2 \n9_reg[0]  ( .D(n102), .CK(clock_c), .Q(n93), .QN(n1960) );
  DFF_X2 n6_reg ( .D(n110), .CK(clock_c), .Q(n94), .QN(n1956) );
  DFF_X2 n5_reg ( .D(n112), .CK(clock_c), .Q(n95), .QN(n1957) );
  DFF_X2 n4_reg ( .D(n113), .CK(clock_c), .Q(n96), .QN(n1958) );
  DFF_X2 n7_reg ( .D(n127), .CK(clock_c), .QN(n1955) );
  DFF_X2 \n9_reg[2]  ( .D(n115), .CK(clock_c), .Q(n98), .QN(n1961) );
  DFF_X2 \n9_reg[3]  ( .D(n117), .CK(clock_c), .Q(n929), .QN(n1962) );
  DFF_X2 \n9_reg[4]  ( .D(n119), .CK(clock_c), .Q(n1967), .QN(n924) );
  DFF_X2 \n9_reg[5]  ( .D(n121), .CK(clock_c), .Q(n99), .QN(n1964) );
  DFF_X2 \n9_reg[1]  ( .D(n123), .CK(clock_c), .Q(n1825), .QN(n1963) );
  DFF_X2 \n8_reg[2]  ( .D(n125), .CK(clock_c), .Q(n1971), .QN(n914) );
  DFF_X2 n3_reg ( .D(n129), .CK(clock_c), .Q(n97), .QN(n1959) );
  DFF_X2 \n8_reg[3]  ( .D(n157), .CK(clock_c), .Q(n1812) );
  DFF_X2 \n24_reg[0]  ( .D(n198), .CK(clock_c), .Q(o1[0]), .QN(n106) );
  DFF_X2 \n24_reg[1]  ( .D(n197), .CK(clock_c), .Q(o1[1]), .QN(n107) );
  DFF_X2 \n24_reg[2]  ( .D(n196), .CK(clock_c), .Q(o1[2]), .QN(n108) );
  DFF_X2 \n24_reg[3]  ( .D(n195), .CK(clock_c), .Q(o1[3]), .QN(n109) );
  DFF_X2 \n23_reg[7]  ( .D(n147), .CK(clock_c), .Q(n23[7]), .QN(n128) );
  DFF_X2 \n23_reg[8]  ( .D(n148), .CK(clock_c), .Q(n23[8]), .QN(n58) );
  DFF_X1 \n2_reg[5]  ( .D(n180), .CK(clock_c), .Q(n2[5]), .QN(n173) );
  DFF_X2 \n1_reg[3]  ( .D(n203), .CK(clock_c), .Q(n1[3]), .QN(n168) );
  DFF_X2 \n9_reg[9]  ( .D(n161), .CK(clock_c), .Q(n922), .QN(n1970) );
  DFF_X1 \n2_reg[1]  ( .D(n183), .CK(clock_c), .Q(n2[1]), .QN(n80) );
  DFF_X2 \n24_reg[4]  ( .D(n194), .CK(clock_c), .Q(o1[4]), .QN(n103) );
  DFF_X2 \n24_reg[5]  ( .D(n193), .CK(clock_c), .Q(o1[5]), .QN(n104) );
  DFF_X2 \n24_reg[6]  ( .D(n192), .CK(clock_c), .Q(o1[6]), .QN(n105) );
  cf_fp_mul_p_3_4_18 s25 ( .i1(n1), .i2(n2), .o1(s25_1), .o2(s25_2), .o3(s25_3), .o4(s25_4), .o5(s25_5), .o6(s25_6), .o7(s25_7) );
  cf_fp_mul_p_3_4_11 s26 ( .i1(s27_1), .i2(s27_2), .i3(s27_3), .i4(s27_4), 
        .i5(s27_5), .i6(s27_6), .i7(s27_7), .o1(s26_1) );
  cf_fp_mul_p_3_4_3 s27 ( .clock_c(clock_c), .i1(i1), .i2(i2), .i3(n17), .i4(
        n18), .i5(n19), .i6(n20), .i7(n21), .i8(n22), .i9(n23), .o1(s27_1), 
        .o2(s27_2), .o3(s27_3), .o4(s27_4), .o5(s27_5), .o6(s27_6), .o7(s27_7)
         );
  DFF_X2 \n9_reg[6]  ( .D(n158), .CK(clock_c), .Q(n1966), .QN(n1816) );
  DFF_X2 \n9_reg[7]  ( .D(n159), .CK(clock_c), .Q(n930), .QN(n1965) );
  DFF_X1 \n2_reg[4]  ( .D(n204), .CK(clock_c), .Q(n2[4]), .QN(n137) );
  DFF_X1 \n9_reg[8]  ( .D(n160), .CK(clock_c), .Q(n1969), .QN(n926) );
  DFF_X2 \n1_reg[0]  ( .D(n177), .CK(clock_c), .Q(n1[0]), .QN(n27) );
  DFF_X1 \n1_reg[4]  ( .D(n202), .CK(clock_c), .Q(n1[4]), .QN(n169) );
  DFF_X1 \n1_reg[6]  ( .D(n201), .CK(clock_c), .Q(n1[6]), .QN(n171) );
  DFF_X1 \n1_reg[5]  ( .D(n200), .CK(clock_c), .Q(n1[5]), .QN(n170) );
  DFF_X1 \n1_reg[2]  ( .D(n175), .CK(clock_c), .Q(n1[2]), .QN(n167) );
  DFF_X1 \n2_reg[3]  ( .D(n181), .CK(clock_c), .Q(n2[3]), .QN(n71) );
  DFF_X2 \n1_reg[1]  ( .D(n176), .CK(clock_c), .Q(n1[1]), .QN(n166) );
  DFF_X2 \n2_reg[2]  ( .D(n182), .CK(clock_c), .Q(n2[2]), .QN(n136) );
  INV_X1 U3 ( .A(n1912), .ZN(n1902) );
  INV_X1 U4 ( .A(n1902), .ZN(n1903) );
  INV_X1 U5 ( .A(n1902), .ZN(n1904) );
  INV_X1 U6 ( .A(n1902), .ZN(n1905) );
  INV_X1 U7 ( .A(n1902), .ZN(n1906) );
  INV_X1 U8 ( .A(n1938), .ZN(n1907) );
  INV_X1 U9 ( .A(n1907), .ZN(n1908) );
  INV_X1 U10 ( .A(n1907), .ZN(n1909) );
  INV_X1 U11 ( .A(n1902), .ZN(n1910) );
  INV_X1 U12 ( .A(n1907), .ZN(n1911) );
  CLKBUF_X1 U13 ( .A(n1908), .Z(n1912) );
  INV_X1 U14 ( .A(n1936), .ZN(n1913) );
  INV_X1 U15 ( .A(n1925), .ZN(n1914) );
  INV_X1 U16 ( .A(n1910), .ZN(n1915) );
  CLKBUF_X1 U17 ( .A(n1917), .Z(n1916) );
  CLKBUF_X1 U18 ( .A(n81), .Z(n1917) );
  CLKBUF_X1 U19 ( .A(n1989), .Z(n1918) );
  INV_X1 U20 ( .A(n1948), .ZN(n1919) );
  INV_X1 U21 ( .A(n1919), .ZN(n1920) );
  INV_X1 U22 ( .A(n1919), .ZN(n1921) );
  INV_X1 U23 ( .A(n1933), .ZN(n1922) );
  INV_X1 U24 ( .A(n1950), .ZN(n1923) );
  INV_X1 U25 ( .A(n1923), .ZN(n1924) );
  INV_X1 U26 ( .A(n1934), .ZN(n1925) );
  INV_X1 U27 ( .A(n1931), .ZN(n1926) );
  INV_X1 U28 ( .A(n1926), .ZN(n1927) );
  INV_X1 U29 ( .A(n1926), .ZN(n1928) );
  INV_X1 U30 ( .A(n1926), .ZN(n1929) );
  INV_X1 U31 ( .A(n1935), .ZN(n1930) );
  CLKBUF_X1 U32 ( .A(n1932), .Z(n1931) );
  INV_X1 U33 ( .A(n2030), .ZN(n1932) );
  INV_X1 U34 ( .A(n1932), .ZN(n1933) );
  INV_X1 U35 ( .A(n1932), .ZN(n1934) );
  INV_X1 U36 ( .A(n1932), .ZN(n1935) );
  INV_X1 U37 ( .A(n83), .ZN(n1936) );
  AND2_X1 U38 ( .A1(n2005), .A2(n2004), .ZN(n83) );
  INV_X1 U39 ( .A(n83), .ZN(n1937) );
  AND2_X1 U40 ( .A1(n1951), .A2(n2005), .ZN(n79) );
  INV_X1 U41 ( .A(n79), .ZN(n1938) );
  CLKBUF_X1 U42 ( .A(n1987), .Z(n1939) );
  CLKBUF_X1 U43 ( .A(n1987), .Z(n1940) );
  CLKBUF_X1 U44 ( .A(n1987), .Z(n1941) );
  CLKBUF_X1 U45 ( .A(n1987), .Z(n1942) );
  NAND2_X1 U46 ( .A1(n922), .A2(n1949), .ZN(n1943) );
  INV_X1 U47 ( .A(n2030), .ZN(n1944) );
  INV_X1 U48 ( .A(n2030), .ZN(n1945) );
  INV_X1 U49 ( .A(n1953), .ZN(n1946) );
  INV_X1 U50 ( .A(n1934), .ZN(n1947) );
  INV_X1 U51 ( .A(n1933), .ZN(n1948) );
  INV_X1 U52 ( .A(n1935), .ZN(n1949) );
  INV_X1 U53 ( .A(n1934), .ZN(n1950) );
  CLKBUF_X1 U54 ( .A(n1952), .Z(n2030) );
  INV_X1 U55 ( .A(n1916), .ZN(n1951) );
  INV_X1 U56 ( .A(n1946), .ZN(n1952) );
  INV_X1 U57 ( .A(n1917), .ZN(n1953) );
  AND2_X1 U58 ( .A1(i1), .A2(n2005), .ZN(n81) );
  INV_X1 U59 ( .A(n1911), .ZN(n1954) );
  CLKBUF_X1 U60 ( .A(n1910), .Z(n1973) );
  OR2_X1 U61 ( .A1(n1989), .A2(n1972), .ZN(n1993) );
  OAI22_X1 U62 ( .A1(n1951), .A2(n2033), .B1(n1936), .B2(n1955), .ZN(n127) );
  INV_X1 U63 ( .A(s25_5), .ZN(n2033) );
  OAI22_X1 U64 ( .A1(n1914), .A2(n1955), .B1(n1937), .B2(n131), .ZN(n152) );
  OAI22_X1 U65 ( .A1(n1952), .A2(n2032), .B1(n1903), .B2(n130), .ZN(n191) );
  INV_X1 U66 ( .A(s26_1[7]), .ZN(n2032) );
  OAI22_X1 U67 ( .A1(n1953), .A2(n2036), .B1(n1908), .B2(n139), .ZN(n178) );
  INV_X1 U68 ( .A(i4[7]), .ZN(n2036) );
  OAI22_X1 U69 ( .A1(n1951), .A2(n2035), .B1(n1905), .B2(n172), .ZN(n174) );
  INV_X1 U70 ( .A(i3[7]), .ZN(n2035) );
  INV_X1 U71 ( .A(i2), .ZN(n2005) );
  AOI22_X1 U72 ( .A1(n93), .A2(n1954), .B1(n1945), .B2(s25_7[0]), .ZN(n1974)
         );
  INV_X1 U73 ( .A(n1974), .ZN(n102) );
  AOI22_X1 U74 ( .A1(n922), .A2(n79), .B1(s25_7[9]), .B2(n1928), .ZN(n1975) );
  INV_X1 U75 ( .A(n1975), .ZN(n161) );
  AOI22_X1 U76 ( .A1(n1825), .A2(n79), .B1(s25_7[1]), .B2(n1944), .ZN(n1976)
         );
  INV_X1 U77 ( .A(n1976), .ZN(n123) );
  NAND2_X1 U78 ( .A1(n1930), .A2(n922), .ZN(n1989) );
  NAND2_X1 U79 ( .A1(n1925), .A2(n1970), .ZN(n1987) );
  OAI222_X1 U80 ( .A1(n1943), .A2(n1963), .B1(n1942), .B2(n1960), .C1(n1903), 
        .C2(n114), .ZN(n140) );
  AOI22_X1 U81 ( .A1(n98), .A2(n1954), .B1(s25_7[2]), .B2(n1930), .ZN(n1977)
         );
  INV_X1 U82 ( .A(n1977), .ZN(n115) );
  OAI222_X1 U83 ( .A1(n1918), .A2(n1961), .B1(n1939), .B2(n1963), .C1(n116), 
        .C2(n1903), .ZN(n141) );
  AOI22_X1 U84 ( .A1(n929), .A2(n1915), .B1(s25_7[3]), .B2(n81), .ZN(n1978) );
  INV_X1 U85 ( .A(n1978), .ZN(n117) );
  OAI222_X1 U86 ( .A1(n1943), .A2(n1962), .B1(n1940), .B2(n1961), .C1(n1911), 
        .C2(n118), .ZN(n142) );
  AOI22_X1 U87 ( .A1(n79), .A2(n1967), .B1(s25_7[4]), .B2(n1946), .ZN(n1979)
         );
  INV_X1 U88 ( .A(n1979), .ZN(n119) );
  OAI222_X1 U89 ( .A1(n1943), .A2(n924), .B1(n1941), .B2(n1962), .C1(n1908), 
        .C2(n120), .ZN(n143) );
  AOI22_X1 U90 ( .A1(n99), .A2(n1915), .B1(s25_7[5]), .B2(n1921), .ZN(n1980)
         );
  INV_X1 U91 ( .A(n1980), .ZN(n121) );
  OAI222_X1 U92 ( .A1(n1918), .A2(n1964), .B1(n1941), .B2(n924), .C1(n122), 
        .C2(n1909), .ZN(n144) );
  AOI22_X1 U93 ( .A1(n1915), .A2(n1966), .B1(s25_7[6]), .B2(n1947), .ZN(n1981)
         );
  INV_X1 U94 ( .A(n1981), .ZN(n158) );
  OAI222_X1 U95 ( .A1(n1989), .A2(n1816), .B1(n1942), .B2(n1964), .C1(n1904), 
        .C2(n124), .ZN(n145) );
  AOI22_X1 U96 ( .A1(n930), .A2(n1915), .B1(s25_7[7]), .B2(n1924), .ZN(n1982)
         );
  INV_X1 U97 ( .A(n1982), .ZN(n159) );
  OAI222_X1 U98 ( .A1(n1943), .A2(n1965), .B1(n1940), .B2(n1816), .C1(n1910), 
        .C2(n126), .ZN(n146) );
  AOI22_X1 U99 ( .A1(n1954), .A2(n1969), .B1(s25_7[8]), .B2(n1945), .ZN(n1983)
         );
  INV_X1 U100 ( .A(n1983), .ZN(n160) );
  OAI222_X1 U101 ( .A1(n1943), .A2(n926), .B1(n1939), .B2(n1965), .C1(n1910), 
        .C2(n128), .ZN(n147) );
  OAI221_X1 U102 ( .B1(n926), .B2(n1953), .C1(n58), .C2(n1909), .A(n1989), 
        .ZN(n148) );
  AOI22_X1 U103 ( .A1(n931), .A2(n1954), .B1(n1921), .B2(s25_6[0]), .ZN(n1984)
         );
  INV_X1 U104 ( .A(n1984), .ZN(n2034) );
  XOR2_X1 U105 ( .A(n1970), .B(n931), .Z(n1985) );
  OAI22_X1 U106 ( .A1(n1914), .A2(n1985), .B1(n57), .B2(n1912), .ZN(n149) );
  AOI22_X1 U107 ( .A1(n1954), .A2(n1968), .B1(n1929), .B2(s25_6[1]), .ZN(n1986) );
  INV_X1 U108 ( .A(n1986), .ZN(n101) );
  OAI21_X1 U109 ( .B1(n931), .B2(n1951), .A(n1939), .ZN(n1988) );
  INV_X1 U110 ( .A(n1988), .ZN(n1992) );
  MUX2_X1 U111 ( .A(n1992), .B(n1993), .S(n874), .Z(n1990) );
  OAI21_X1 U112 ( .B1(n1909), .B2(n111), .A(n1990), .ZN(n190) );
  AOI22_X1 U113 ( .A1(n1915), .A2(n1971), .B1(n1922), .B2(s25_6[2]), .ZN(n1991) );
  INV_X1 U114 ( .A(n1991), .ZN(n125) );
  OAI21_X1 U115 ( .B1(n1952), .B2(n1968), .A(n1992), .ZN(n2000) );
  INV_X1 U116 ( .A(n2000), .ZN(n1995) );
  INV_X1 U117 ( .A(n1993), .ZN(n1994) );
  NAND2_X1 U118 ( .A1(n1994), .A2(n1968), .ZN(n1998) );
  MUX2_X1 U119 ( .A(n1995), .B(n1998), .S(n914), .Z(n1996) );
  OAI21_X1 U120 ( .B1(n56), .B2(n1973), .A(n1996), .ZN(n150) );
  AOI22_X1 U121 ( .A1(n1812), .A2(n79), .B1(n1922), .B2(s25_6[3]), .ZN(n1997)
         );
  INV_X1 U122 ( .A(n1997), .ZN(n157) );
  INV_X1 U123 ( .A(n1998), .ZN(n1999) );
  NAND2_X1 U124 ( .A1(n1971), .A2(n1999), .ZN(n2002) );
  AOI21_X1 U125 ( .B1(n1916), .B2(n914), .A(n2000), .ZN(n2001) );
  MUX2_X1 U126 ( .A(n2002), .B(n2001), .S(n1812), .Z(n2003) );
  OAI21_X1 U127 ( .B1(n1973), .B2(n55), .A(n2003), .ZN(n151) );
  INV_X1 U128 ( .A(i1), .ZN(n2004) );
  AOI22_X1 U129 ( .A1(s25_4), .A2(n1927), .B1(n94), .B2(n1913), .ZN(n2006) );
  INV_X1 U130 ( .A(n2006), .ZN(n110) );
  OAI22_X1 U131 ( .A1(n132), .A2(n1937), .B1(n1952), .B2(n1956), .ZN(n153) );
  AOI22_X1 U132 ( .A1(s25_3), .A2(n1924), .B1(n95), .B2(n83), .ZN(n2007) );
  INV_X1 U133 ( .A(n2007), .ZN(n112) );
  OAI22_X1 U134 ( .A1(n133), .A2(n1936), .B1(n1953), .B2(n1957), .ZN(n154) );
  AOI22_X1 U135 ( .A1(n1947), .A2(s25_2), .B1(n96), .B2(n1913), .ZN(n2008) );
  INV_X1 U136 ( .A(n2008), .ZN(n113) );
  OAI22_X1 U137 ( .A1(n134), .A2(n1937), .B1(n1951), .B2(n1958), .ZN(n155) );
  AOI22_X1 U138 ( .A1(s25_1), .A2(n1931), .B1(n97), .B2(n1913), .ZN(n2009) );
  INV_X1 U139 ( .A(n2009), .ZN(n129) );
  OAI22_X1 U140 ( .A1(n135), .A2(n1937), .B1(n1914), .B2(n1959), .ZN(n156) );
  NAND2_X1 U141 ( .A1(i4[0]), .A2(n1921), .ZN(n2010) );
  OAI21_X1 U142 ( .B1(n82), .B2(n1909), .A(n2010), .ZN(n199) );
  NAND2_X1 U143 ( .A1(i4[1]), .A2(n1948), .ZN(n2011) );
  OAI21_X1 U144 ( .B1(n80), .B2(n1938), .A(n2011), .ZN(n183) );
  NAND2_X1 U145 ( .A1(i4[2]), .A2(n1929), .ZN(n2012) );
  OAI21_X1 U146 ( .B1(n136), .B2(n1911), .A(n2012), .ZN(n182) );
  NAND2_X1 U147 ( .A1(i4[3]), .A2(n1924), .ZN(n2013) );
  OAI21_X1 U148 ( .B1(n71), .B2(n1910), .A(n2013), .ZN(n181) );
  NAND2_X1 U149 ( .A1(i4[4]), .A2(n1949), .ZN(n2014) );
  OAI21_X1 U150 ( .B1(n137), .B2(n1906), .A(n2014), .ZN(n204) );
  NAND2_X1 U151 ( .A1(i4[5]), .A2(n1944), .ZN(n2015) );
  OAI21_X1 U152 ( .B1(n173), .B2(n1910), .A(n2015), .ZN(n180) );
  NAND2_X1 U153 ( .A1(i4[6]), .A2(n1920), .ZN(n2016) );
  OAI21_X1 U154 ( .B1(n138), .B2(n1903), .A(n2016), .ZN(n179) );
  NAND2_X1 U155 ( .A1(i3[0]), .A2(n1925), .ZN(n2017) );
  OAI21_X1 U156 ( .B1(n27), .B2(n1905), .A(n2017), .ZN(n177) );
  NAND2_X1 U157 ( .A1(i3[1]), .A2(n1946), .ZN(n2018) );
  OAI21_X1 U158 ( .B1(n166), .B2(n1911), .A(n2018), .ZN(n176) );
  NAND2_X1 U159 ( .A1(i3[2]), .A2(n1922), .ZN(n2019) );
  OAI21_X1 U160 ( .B1(n167), .B2(n1908), .A(n2019), .ZN(n175) );
  NAND2_X1 U161 ( .A1(i3[3]), .A2(n1950), .ZN(n2020) );
  OAI21_X1 U162 ( .B1(n168), .B2(n1912), .A(n2020), .ZN(n203) );
  NAND2_X1 U163 ( .A1(i3[4]), .A2(n1920), .ZN(n2021) );
  OAI21_X1 U164 ( .B1(n169), .B2(n1904), .A(n2021), .ZN(n202) );
  NAND2_X1 U165 ( .A1(i3[5]), .A2(n1945), .ZN(n2022) );
  OAI21_X1 U166 ( .B1(n170), .B2(n1938), .A(n2022), .ZN(n200) );
  NAND2_X1 U167 ( .A1(i3[6]), .A2(n1928), .ZN(n2023) );
  OAI21_X1 U168 ( .B1(n171), .B2(n1905), .A(n2023), .ZN(n201) );
  NAND2_X1 U169 ( .A1(s26_1[0]), .A2(n1929), .ZN(n2024) );
  OAI21_X1 U170 ( .B1(n106), .B2(n1906), .A(n2024), .ZN(n198) );
  NAND2_X1 U171 ( .A1(s26_1[1]), .A2(n1917), .ZN(n2025) );
  OAI21_X1 U172 ( .B1(n107), .B2(n1906), .A(n2025), .ZN(n197) );
  NAND2_X1 U173 ( .A1(s26_1[2]), .A2(n1928), .ZN(n2026) );
  OAI21_X1 U174 ( .B1(n108), .B2(n1911), .A(n2026), .ZN(n196) );
  NAND2_X1 U175 ( .A1(s26_1[3]), .A2(n1927), .ZN(n2027) );
  OAI21_X1 U176 ( .B1(n109), .B2(n1905), .A(n2027), .ZN(n195) );
  NAND2_X1 U177 ( .A1(s26_1[4]), .A2(n1944), .ZN(n2028) );
  OAI21_X1 U178 ( .B1(n1906), .B2(n103), .A(n2028), .ZN(n194) );
  NAND2_X1 U179 ( .A1(s26_1[5]), .A2(n1930), .ZN(n2029) );
  OAI21_X1 U180 ( .B1(n1904), .B2(n104), .A(n2029), .ZN(n193) );
  NAND2_X1 U181 ( .A1(s26_1[6]), .A2(n81), .ZN(n2031) );
  OAI21_X1 U182 ( .B1(n1973), .B2(n105), .A(n2031), .ZN(n192) );
endmodule


module cf_fp_mul_p_3_4_1 ( clock_c, i1, i2, o1 );
  input [7:0] i1;
  input [7:0] i2;
  output [7:0] o1;
  input clock_c;


  cf_fp_mul_p_3_4_2 s3 ( .clock_c(clock_c), .i1(1'b1), .i2(1'b0), .i3(i1), 
        .i4(i2), .o1(o1) );
endmodule


module cf_fp_mul_p_3_4 ( clock_c, a_i, b_i, x_o );
  input [7:0] a_i;
  input [7:0] b_i;
  output [7:0] x_o;
  input clock_c;


  cf_fp_mul_p_3_4_1 s1 ( .clock_c(clock_c), .i1(a_i), .i2(b_i), .o1(x_o) );
endmodule

