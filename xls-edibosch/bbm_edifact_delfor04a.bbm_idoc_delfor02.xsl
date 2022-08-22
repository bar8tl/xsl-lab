<?xml version="1.0" encoding="UTF-8"?>
<!--
#
# $Header:$
#
# $Log:$
#
# Mapping: bbm_edifact_delfor04a.bbm_idoc_delfor02.xsl
# Forms: bbm_edifact_delfor04a ; bbm_idoc_delfor02
# Created: snt6cob on 02.05.2021
#..............................................................................................'
#
# version 	| date			| user								| comment
# .............................................................................................. 
#  V1.01    | 02.05.2021 | Initial Creation													 | Suganya N 
#  V1.02    | 04.10.2021 | Added  Customer GKN                            			 		 | Gowthami
#  V1.03	| 10.05.2022 | Map change for GKN changed with respect to DFABL and E2EDP16		 | Suganya N 
#  V1.04    | 10.05.2022 | Added map logic for INEOS in E2EDK09 KTEXT            			 | Harsha
#  V1.05    | 10.05.2022 | Added customer Leoni 											 | Suganya N
# ..............................................................................................-->

<!--Stylesheet was automatically generated on May 15, 2020 9:40:14 AM-->
<xsl:stylesheet version="2.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:xs="http://www.w3.org/2001/XMLSchema"
				xmlns:fn="http://www.w3.org/2005/xpath-functions"
				xmlns:err="http://www.w3.org/2005/xqt-errors"
				xmlns:XmlTransform="java:de.axway.converter.xml.xsltextensions.XsltExtensions"
					exclude-result-prefixes="XmlTransform"
				xmlns:saxon="http://saxon.sf.net/"
				xmlns:bosch="http://www.bosch.com"
				xmlns:exslt="http://exslt.org/common"
				extension-element-prefixes="saxon xs fn err bosch XmlTransform exslt">
	
	

	<!-- ############################################################### -->
	<!--  Import                                                         -->
	<!-- ############################################################### -->
	<xsl:import href="BBM_FUNCTIONS_XSLT_UTILS.xsl" />
	
	<!-- ############################################################### -->
	<!--  Parameters and Variables                                       -->
	<!-- ############################################################### -->
	<xsl:param name="ACTISEDI" select="''"/>
	<xsl:param name="PPATH" select="''"/>
	<xsl:param name="STDVRS" select="''"/>
	<xsl:param name="SNDPOR" select="''"/>
	<xsl:param name="SNDPRT" select="''"/>
	<xsl:param name="SNDPRN" select="''"/>
	<xsl:param name="SNDPFC" select="''"/>
	<xsl:param name="STDMES" select="''"/>
	<xsl:param name="STD" select="''"/>
	<xsl:param name="RCVPOR" select="''"/>
	<xsl:param name="RCVPRT" select="''"/>
	<xsl:param name="RCVPFC" select="''"/>
	<xsl:param name="RCVPRN" select="''"/>
	<xsl:param name="JOB_ID" select="''"/>
	<xsl:param name="JOBID" select="''"/>
	<xsl:param name="OBJECT_ID" select="''"/>
	<xsl:param name="PARTNER" select="''"/>
	<xsl:param name="stepfile" select="''"/>
	
	
	
	<!-- ############################################################### -->
	<!--  Flags
	#	  
	#     CODETAB should be placed in C:\Axway\BOM\bin\ACTISEDI\lib\convert\tftab
	#   	
	#	  Flag creation rule:
	#     Follow the below rule in creation of a flag:
	#
	#     FOR CODETAB: BBM_CODETAB_DELFOR04A_DELFOR02.xsl
	#     ###################################################################
	# 	  SenderID(UNB)#FLAG_IDOCSegment_IDOCfield_InputSource_InputCondition
	#	  ###################################################################
	#	  Eg: XYZ#FLAG_E2EDP09_VTRNR_RFF_1154_ON
	#		  	SenderID(UNB)  : XYZ
	#		  	IDOCSegment    : E2EDP09
	#		  	IDOCField      : VTRNR
	#		  	InputSource    : RFF_1154
	#		  	InputCondition : ON
	#     
	#     FOR MAP:
	#     ##################################################################
	#     FLAG_IDOCSegment_IDOCfield_InputSource_InputCondition
	#     ##################################################################
	#     Eg: FLAG_E2EDP09_VTRNR_RFF_1154_ON
	#		  	IDOCSegment    : E2EDP09
	#		  	IDOCField      : VTRNR
	#		  	InputSource    : RFF_1154
	#		  	InputCondition : ON
	################################################################# -->		
	<!-- Mapping Name /-->
	<xsl:variable name="gv_mapping" select="'bbm_edifact_delfor04a.bbm_idoc_delfor02.xsl'" saxon:assignable="yes" />
	
	<!-- ############################################################### -->
	<!--  SNDPRN                                       -->
	<!-- ############################################################### -->
	<!-- Global Variables -->
	 <xsl:variable name="gv_BELNR" select="/ACTIS/SG0/SG6/SG12/SG16/SG17/SG17_RFF/SG17_RFF_C506[SG17_RFF_C506_1153='AAK']/SG17_RFF_C506_1154" saxon:assignable="yes" />
	 <xsl:variable name="gv_LFIMG" select="/ACTIS/SG0/SG6/SG12/SG16/SG16_QTY[SG16_QTY_C186_6063='12']/SG16_QTY_C186_6060" saxon:assignable="yes" />	 
	 <xsl:variable name="gv_LIDTL" select="/ACTIS/SG0/SG6/SG12/SG16/SG16_DTM/SG16_DTM_C507[SG16_DTM_C507_2005='11']/SG16_DTM_C507_2380" saxon:assignable="yes" />
	 <xsl:variable name="gv_BELNR_SG17_RFF_1154_AAU" select="/ACTIS/SG0/SG6/SG12/SG16/SG17/SG17_RFF/SG17_RFF_C506[SG17_RFF_C506_1153='AAU']/SG17_RFF_C506_1154" saxon:assignable="yes" />
	 <xsl:variable name="gv_LFIMG_QTY_6060_194" select="/ACTIS/SG0/SG6/SG12/SG16/SG16_QTY[SG16_QTY_C186_6063='194']/SG16_QTY_C186_6060" saxon:assignable="yes" />
	 <xsl:variable name="gv_LIDTL_DTM_2380_171" select="/ACTIS/SG0/SG6/SG12/SG16/SG17/SG17_DTM/SG17_DTM_C507[SG17_DTM_C507_2005='171']/SG17_DTM_C507_2380" saxon:assignable="yes" />
	 
	 <!--Local Variables  -->
	 <xsl:variable name="lv_LIDTL_DTM_2380_50" select="/ACTIS/SG0/SG6/SG12/SG16/SG16_DTM/SG16_DTM_C507[SG16_DTM_C507_2005='50']/SG16_DTM_C507_2380" saxon:assignable="no" />
	
  	<xsl:variable name="FLAG_SNDPRN" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat(/ACTIS/UNB/UNB_S002/UNB_S002_0004,'#',/ACTIS/UNB/UNB_S003/UNB_S003_0010,'#SNDPRN'))" saxon:assignable="yes"/>
		
	<!-- E2EDK09 Flags -->
	<xsl:variable name="FLAG_E2EDK09_VTRNR_RFF_1154_ON" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDK09_VTRNR_RFF_1154_ON'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDK09_BSTDK_DTM_2380_137" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDK09_BSTDK_DTM_2380_137'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDK09_BSTDK_DTM_2380_171" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDK09_BSTDK_DTM_2380_171'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDK09_LABNK_BGM_1001_241" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDK09_LABNK_BGM_1001_241'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDK09_LABNK_BGM_1001_236" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDK09_LABNK_BGM_1001_236'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDK09_LABNK_RFF_C506_1153_AAN" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDK09_LABNK_RFF_C506_1153_AAN'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDK09_ABRVW" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDK09_ABRVW'))" saxon:assignable="yes"/>	
	<xsl:variable name="FLAG_E2EDK09_KTEXT_V_NAD_3039_SE" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDK09_KTEXT_V_NAD_3039_SE'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDK09_KTEXT_V_NAD_3039_SF" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDK09_KTEXT_V_NAD_3039_SF'))" saxon:assignable="yes"/>
	
	<!-- E2EDKA1 Flags -->
	<xsl:variable name="FLAG_E2EDKA1_PARTN_NAD_3039_SE" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDKA1_PARTN_NAD_3039_SE'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDKA1_LIFNR_NAD_3039_MI_BY_SU_SE" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDKA1_LIFNR_NAD_3039_MI_BY_SU_SE'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDKA1_PARTN_LOC_3225_11" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDKA1_PARTN_LOC_3225_11'))" saxon:assignable="yes"/>	
	
	<!-- E2EDP10 Flags -->
	<xsl:variable name="FLAG_E2EDP10_IDNKD_LIN_7140_IN" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP10_IDNKD_LIN_7140_IN'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP10_IDNLF_PIA_7140_SA" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP10_IDNLF_PIA_7140_SA'))" saxon:assignable="yes"/>	
	<xsl:variable name="FLAG_E2EDP10_ARKTX_IMD_7808" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP10_ARKTX_IMD_7808'))" saxon:assignable="yes"/>	
	<xsl:variable name="FLAG_E2EDP10_KWERK_NAD_3039_ST" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP10_KWERK_NAD_3039_ST'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP10_DFABL_LOC_3225_11" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP10_DFABL_LOC_3225_11'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP10_VBRST_LOC_3225_159" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP10_VBRST_LOC_3225_159'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP10_BELNR_RFF_1154_AAK" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP10_BELNR_RFF_1154_AAK'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP10_BELNR_RFF_1154_AAU" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP10_BELNR_RFF_1154_AAU'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP10_LFIMG_QTY_6060_12" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP10_LFIMG_QTY_6060_12'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP10_LFIMG_QTY_6060_194" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP10_LFIMG_QTY_6060_194'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP10_LIDTL_DTM_2380_11" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP10_LIDTL_DTM_2380_11'))" saxon:assignable="yes"/>	
	<xsl:variable name="FLAG_E2EDP10_LIDTL_DTM_2380_171" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP10_LIDTL_DTM_2380_171'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP10_LIDTL_DTM_2380_50" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP10_LIDTL_DTM_2380_50'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP10_AKUEM_QTY_6060_70" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP10_AKUEM_QTY_6060_70'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP10_LABKY" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP10_LABKY'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP10_SCREL" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP10_SCREL'))" saxon:assignable="yes"/>
	
	<!-- E2EDP36 Flags -->
	<xsl:variable name="FLAG_E2EDP36_BELNR_RFF_1154_AAU" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP36_BELNR_RFF_1154_AAU'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP36_LFIMG_QTY_6060_194" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP36_LFIMG_QTY_6060_194'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP36_LIDTL_DTM_2380_171" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP36_LIDTL_DTM_2380_171'))" saxon:assignable="yes"/>
	
	<!-- E2EDP15 Flags -->
	<xsl:variable name="FLAG_E2EDP15_TXT01" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP15_TXT01'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP15_TXT02_IMD_7008" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP15_TXT02_IMD_7008'))" saxon:assignable="yes"/>	
	<xsl:variable name="FLAG_E2EDP15_TXT02_NAD_3039_BY_SE" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP15_TXT02_NAD_3039_BY_SE'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP15_TXT03" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP15_TXT03'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP15_TXT04_NAD_3039_BY_SE" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP15_TXT04_NAD_3039_BY_SE'))" saxon:assignable="yes"/>	
	<xsl:variable name="FLAG_E2EDP15_TXT04_RFF_1154_ON" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP15_TXT04_RFF_1154_ON'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP15_TXT05" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP15_TXT05'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP15_TXT06_RFF_1154_ON" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP15_TXT06_RFF_1154_ON'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP15_TXT07" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP15_TXT07'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP15_TXT08_LIN_7143_IN" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP15_TXT08_LIN_7143_IN'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP15_TXT09" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP15_TXT09'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP15_TXT10_FTX_4451_AAI" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP15_TXT10_FTX_4451_AAI'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP15_TXT11" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP15_TXT11'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP15_TXT12_PIA_C212_7143_SA" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP15_TXT12_PIA_C212_7143_SA'))" saxon:assignable="yes"/>
	<!-- E2EDP16 Flags -->
	<xsl:variable name="FLAG_E2EDP16_ETTYP_SCC_4017" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_ETTYP_SCC_4017'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_PRGRS_SCC_2013" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_PRGRS_SCC_2013'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_PRGRS_D" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_PRGRS_D'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_PRGRS_W" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_PRGRS_W'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_PRGRS_I" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_PRGRS_I'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_PRGRS_SCC_C329_2013" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_PRGRS_SCC_C329_2013'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_EDATUV_DTM_2380_10" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_EDATUV_DTM_2380_10'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_EDATUV_DTM_2380_2" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_EDATUV_DTM_2380_2'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_EDATUV_DTM_2380_64" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_EDATUV_DTM_2380_64'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_EDATUV_DTM_2380_234" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_EDATUV_DTM_2380_234'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_EDATUV" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_EDATUV'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_EDATUV_10" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_EDATUV_10'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_EDATUB_DTM_2380_10" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_EDATUB_DTM_2380_10'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_EDATUB_DTM_2380_2" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_EDATUB_DTM_2380_2'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_EDATUB_DTM_2380_63" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_EDATUB_DTM_2380_63'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_EDATUB_DTM_2380_235" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_EDATUB_DTM_2380_235'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_WMENG_QTY_6060_113" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_WMENG_QTY_6060_113'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_WMENG_QTY_6060_1" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_WMENG_QTY_6060_1'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_WMENG_QTY_6060_84" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_WMENG_QTY_6060_84'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_BACK_ORDER" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_BACK_ORDER'))" saxon:assignable="yes"/>
	<xsl:variable name="FLAG_E2EDP16_URGENT_DELIVERY" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_URGENT_DELIVERY'))" saxon:assignable="yes"/> 
	<xsl:variable name="FLAG_E2EDP16_URGENT_DELIVERY_SG0_DTM_2005_137" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/BBM_CODETAB_DELFOR04A_DELFOR02.xsl',concat($FLAG_SNDPRN,'#FLAG_E2EDP16_URGENT_DELIVERY_SG0_DTM_2005_137'))" saxon:assignable="yes"/>
	
	<xsl:variable name="systemdate" select="XmlTransform:getDate('yyyyMMdd')"/>
	<xsl:variable name="systemtime" select="XmlTransform:getDate('HHmmss')"/>
	
	<!-- ############################################################### -->
	<!--  SNDPRN                                       -->
	<!-- ############################################################### -->
	
	<!--Template for root element -->
	<xsl:template match="/">
		<!-- write stepfile name to log file -->
		<xsl:message terminate="no">
			<xsl:text>STEPFILE: </xsl:text>
			<xsl:value-of select="$stepfile" />
		</xsl:message>

		<!-- write mapping name to log file -->
		<xsl:message terminate="no">
			<xsl:text>XSL: </xsl:text>
			<xsl:value-of select="$gv_mapping" />
		</xsl:message>
		
		   <xsl:call-template name="IDoc" />
    </xsl:template>

	<!--Template for 'IDoc' -->
	<xsl:template name="IDoc">
		<IDoc>
			<xsl:for-each select="/ACTIS/SG0/SG6/SG12">
				<xsl:call-template name="G00" />
			</xsl:for-each>
		</IDoc>
	</xsl:template>

	<!--Template for 'G00' -->
	 <xsl:template name="G00">
		<G00>
			<xsl:call-template name="EDI_DC40" />
			<xsl:call-template name="G01" />
		</G00>
	</xsl:template>

	<!--Template for 'EDI_DC40' -->
	<xsl:template name="EDI_DC40">
		<EDI_DC40>
			<EDI_DC40_TABNAM></EDI_DC40_TABNAM>
			<EDI_DC40_MANDT></EDI_DC40_MANDT>
			<EDI_DC40_DOCNUM></EDI_DC40_DOCNUM>
			<EDI_DC40_DOCREL></EDI_DC40_DOCREL>
			<EDI_DC40_STATUS></EDI_DC40_STATUS>
			<EDI_DC40_DIRECT>
				<xsl:text>2</xsl:text>
			</EDI_DC40_DIRECT>
			<EDI_DC40_OUTMOD></EDI_DC40_OUTMOD>
			<EDI_DC40_EXPRSS></EDI_DC40_EXPRSS>
			<EDI_DC40_TEST></EDI_DC40_TEST>
			<EDI_DC40_IDOCTYP>
				<xsl:text>DELFOR02</xsl:text>
			</EDI_DC40_IDOCTYP>
			<EDI_DC40_CIMTYP></EDI_DC40_CIMTYP>
			<EDI_DC40_MESTYP>
				<xsl:text>DELINS</xsl:text>
			</EDI_DC40_MESTYP>
			<EDI_DC40_MESCOD></EDI_DC40_MESCOD>
			<EDI_DC40_MESFCT></EDI_DC40_MESFCT>
			<EDI_DC40_STD></EDI_DC40_STD>
			<EDI_DC40_STDVRS>
				<xsl:value-of select="../../SG0_UNH/SG0_UNH_S009/SG0_UNH_S009_0052"/>
			</EDI_DC40_STDVRS>
			<EDI_DC40_STDMES>
				<xsl:value-of select="../../SG0_UNH/SG0_UNH_S009/SG0_UNH_S009_0065"/>
			</EDI_DC40_STDMES>
			<EDI_DC40_SNDPOR>
				<xsl:value-of select="$SNDPOR"/>
			</EDI_DC40_SNDPOR>
			<EDI_DC40_SNDPRT>
				<xsl:value-of select="$SNDPRT"/>
			</EDI_DC40_SNDPRT>
			<EDI_DC40_SNDPFC>
				<xsl:value-of select="$SNDPFC"/>
			</EDI_DC40_SNDPFC>
			<EDI_DC40_SNDPRN>				
				<xsl:choose> 
                        <xsl:when test="$FLAG_SNDPRN">
                          <xsl:value-of select="$FLAG_SNDPRN"/>
                        </xsl:when>
                        <xsl:otherwise> 
                                <xsl:message terminate="yes">
                                    <xsl:text>codetab: BBM_CODETAB_DELFOR04A_DELFOR02.xsl&#xa;</xsl:text> 
                                                                     
                                 	<xsl:value-of select="concat('ADD SNDPRN:',/ACTIS/UNB/UNB_S002/UNB_S002_0004,'#',/ACTIS/UNB/UNB_S003/UNB_S003_0010,'#SNDPRN=')"/> 
                                 	<xsl:text>&#xa;</xsl:text>
                                 	<xsl:text>ADD FLAGS:Sndprn_value#Flag_value=</xsl:text>
                                </xsl:message> 
                        </xsl:otherwise> 
                </xsl:choose> 			
			</EDI_DC40_SNDPRN>
			<EDI_DC40_SNDSAD></EDI_DC40_SNDSAD>
			<EDI_DC40_SNDLAD>
				<xsl:choose>
                   <xsl:when test="exists(/ACTIS/UNB/UNB_S002/UNB_S002_0007)">
                      <xsl:value-of select="concat(/ACTIS/UNB/UNB_S002/UNB_S002_0004,':',/ACTIS/UNB/UNB_S002/UNB_S002_0007)"/>
                   </xsl:when>
                   <xsl:otherwise>
                      <xsl:value-of select="/ACTIS/UNB/UNB_S002/UNB_S002_0004 "/>
                   </xsl:otherwise>
                </xsl:choose>
			</EDI_DC40_SNDLAD>
			<EDI_DC40_RCVPOR>
				<xsl:value-of select="$RCVPOR"/>
			</EDI_DC40_RCVPOR>
			<EDI_DC40_RCVPRT>
				<xsl:value-of select="$RCVPRT"/>
			</EDI_DC40_RCVPRT>
			<EDI_DC40_RCVPFC></EDI_DC40_RCVPFC>
			<EDI_DC40_RCVPRN>
				<xsl:value-of select="$RCVPRN"/>
			</EDI_DC40_RCVPRN>
			<EDI_DC40_RCVSAD></EDI_DC40_RCVSAD>
			<EDI_DC40_RCVLAD>
			 <xsl:choose>
                   <xsl:when test="exists(/ACTIS/UNB/UNB_S002/UNB_S002_0007)">
                      <xsl:value-of select="concat(/ACTIS/UNB/UNB_S003/UNB_S003_0010,':',/ACTIS/UNB/UNB_S003/UNB_S003_0007)"/>
                   </xsl:when>
                   <xsl:otherwise>
                      <xsl:value-of select="/ACTIS/UNB/UNB_S003/UNB_S003_0010 "/>
                   </xsl:otherwise>
                </xsl:choose>
			</EDI_DC40_RCVLAD>
			<EDI_DC40_CREDAT>
				<xsl:value-of select="$systemdate"/>
			</EDI_DC40_CREDAT>
			<EDI_DC40_CRETIM>
				<xsl:value-of select="$systemtime"/>
			</EDI_DC40_CRETIM>
			<EDI_DC40_REFINT>
				<xsl:value-of select="/ACTIS/UNB/UNB_0020"/>
			</EDI_DC40_REFINT>
			<EDI_DC40_REFGRP></EDI_DC40_REFGRP>
			<EDI_DC40_REFMES></EDI_DC40_REFMES>
			<EDI_DC40_ARCKEY>
				<xsl:choose>
					<xsl:when test="$JOB_ID != ''">
						<xsl:value-of select="concat('workflow-ID: ',$JOB_ID)"/>
					</xsl:when>
					<xsl:when test="$OBJECT_ID != ''">
						<xsl:value-of select="concat('workflow-ID: ',$OBJECT_ID)"/>
					</xsl:when>
					<xsl:when test="$JOBID != ''">
						<xsl:value-of select="concat('workflow-ID: ',$JOBID)"/>
					</xsl:when>
					<xsl:otherwise></xsl:otherwise>
				</xsl:choose>
			</EDI_DC40_ARCKEY>
			<EDI_DC40_SERIAL></EDI_DC40_SERIAL>
			<rest></rest>
		</EDI_DC40>
	</xsl:template>

	<!--Template for 'G01' -->
	<xsl:template name="G01">
		<G01>
			<xsl:call-template name="E2EDK09" />
			<xsl:call-template name="E2EDKA1_AG" />
			<xsl:call-template name="E2EDKA1_AB" />
			<xsl:call-template name="G02" />
		</G01>
	</xsl:template>

	<!--Template for 'E2EDK09' -->
	<xsl:template name="E2EDK09">
		<E2EDK09>	           	
			<E2EDK09_SEGNAM></E2EDK09_SEGNAM>
			<E2EDK09_MANDT></E2EDK09_MANDT>
			<E2EDK09_DOCNUM></E2EDK09_DOCNUM>
			<E2EDK09_SEGNUM></E2EDK09_SEGNUM>
			<E2EDK09_PSGNUM></E2EDK09_PSGNUM>
			<E2EDK09_HLEVEL></E2EDK09_HLEVEL>
			<E2EDK09_VTRNR>
				<xsl:choose>
		 		 <xsl:when test="(not(empty(SG13/SG13_RFF/SG13_RFF_C506[SG13_RFF_C506_1153='ON']))and $FLAG_E2EDK09_VTRNR_RFF_1154_ON='X')">
		  					<xsl:value-of select="SG13/SG13_RFF/SG13_RFF_C506[SG13_RFF_C506_1153='ON']/SG13_RFF_C506_1154" />
		 		  </xsl:when>
	    		</xsl:choose>
			</E2EDK09_VTRNR>
			<E2EDK09_BSTDK>	
				<xsl:if test="(../../SG0_DTM/SG0_DTM_C507[SG0_DTM_C507_2005='137']/SG0_DTM_C507_2380!='' and $FLAG_E2EDK09_BSTDK_DTM_2380_137='X')">
			  		<xsl:value-of select="../../SG0_DTM/SG0_DTM_C507[SG0_DTM_C507_2005='137']/SG0_DTM_C507_2380" />
			 	</xsl:if>
			 	<xsl:if test="(SG13/SG13_DTM/SG13_DTM_C507[SG13_DTM_C507_2005='171']/SG13_DTM_C507_2380!='' and $FLAG_E2EDK09_BSTDK_DTM_2380_171='X')">
			  		<xsl:value-of select="SG13/SG13_DTM/SG13_DTM_C507[SG13_DTM_C507_2005='171']/SG13_DTM_C507_2380"/>
			 	</xsl:if>
			</E2EDK09_BSTDK>
			<E2EDK09_LABNK>			 
			 <xsl:if test="(../../SG0_BGM[SG0_BGM_C002/SG0_BGM_C002_1001='241']/SG0_BGM_C106/SG0_BGM_C106_1004!='' and $FLAG_E2EDK09_LABNK_BGM_1001_241='X')">
			    <xsl:value-of select="../../SG0_BGM[SG0_BGM_C002/SG0_BGM_C002_1001='241']/SG0_BGM_C106/SG0_BGM_C106_1004" />
			 </xsl:if>
			 <!-- Code for the customer GKN -->
			 <xsl:if test="(../../SG0_BGM[SG0_BGM_C002/SG0_BGM_C002_1001='236']/SG0_BGM_C106/SG0_BGM_C106_1004!='' and $FLAG_E2EDK09_LABNK_BGM_1001_236='X')">
			  <xsl:value-of select="../../SG0_BGM[SG0_BGM_C002/SG0_BGM_C002_1001='236']/SG0_BGM_C106/SG0_BGM_C106_1004" />
			 </xsl:if>
			 <!-- code for INEOS customer -->
			 <xsl:choose>
			 	<xsl:when test="(not(empty(SG13/SG13_RFF/SG13_RFF_C506[SG13_RFF_C506_1153='AAN']))and $FLAG_E2EDK09_LABNK_RFF_C506_1153_AAN='X')">
			 		<xsl:value-of select="SG13/SG13_RFF/SG13_RFF_C506[SG13_RFF_C506_1153='AAN']/SG13_RFF_C506_1154" />
			 </xsl:when>
			 </xsl:choose>
			</E2EDK09_LABNK>
			<E2EDK09_ZEICH></E2EDK09_ZEICH>
			<E2EDK09_BSTZD></E2EDK09_BSTZD>
			<E2EDK09_ABRVW>
			<xsl:value-of select="$FLAG_E2EDK09_ABRVW"></xsl:value-of>
			</E2EDK09_ABRVW>
			<E2EDK09_ABNRA></E2EDK09_ABNRA>
			<E2EDK09_ABNRD></E2EDK09_ABNRD>
			<E2EDK09_KTEXT_V>			
				<xsl:if test="(../../SG2/SG2_NAD[SG2_NAD_3035='SE']/SG2_NAD_C082/SG2_NAD_C082_3039!='' and $FLAG_E2EDK09_KTEXT_V_NAD_3039_SE='X')">
					<xsl:value-of select="../../SG2/SG2_NAD[SG2_NAD_3035='SE']/SG2_NAD_C082/SG2_NAD_C082_3039"/>
				</xsl:if>
				<xsl:if test="(../../SG2/SG2_NAD[SG2_NAD_3035='SF']/SG2_NAD_C082/SG2_NAD_C082_3039!='' and $FLAG_E2EDK09_KTEXT_V_NAD_3039_SF='X')">
					<xsl:value-of select="../../SG2/SG2_NAD[SG2_NAD_3035='SF']/SG2_NAD_C082/SG2_NAD_C082_3039"/>
				</xsl:if>			
			</E2EDK09_KTEXT_V>
			<E2EDK09_USR01></E2EDK09_USR01>
			<E2EDK09_USR02></E2EDK09_USR02>
			<E2EDK09_USR03></E2EDK09_USR03>
			<E2EDK09_USR04></E2EDK09_USR04>
			<E2EDK09_USR05></E2EDK09_USR05>
			<E2EDK09_CYEFZ></E2EDK09_CYEFZ>
			<E2EDK09_CYDAT></E2EDK09_CYDAT>
			<E2EDK09_MFLAUF></E2EDK09_MFLAUF>
			<E2EDK09_MFEIN></E2EDK09_MFEIN>
			<E2EDK09_FFLAUF></E2EDK09_FFLAUF>
			<E2EDK09_FFEIN></E2EDK09_FFEIN>
			<rest>
			</rest>
		</E2EDK09>
	</xsl:template>

	<!-- Template for 'E2EDKA1' -->
	<xsl:template name="E2EDKA1_AG">
		<E2EDKA1>
			<E2EDKA1_SEGNAM></E2EDKA1_SEGNAM>
			<E2EDKA1_MANDT></E2EDKA1_MANDT>
			<E2EDKA1_DOCNUM></E2EDKA1_DOCNUM>
			<E2EDKA1_SEGNUM></E2EDKA1_SEGNUM>
			<E2EDKA1_PSGNUM></E2EDKA1_PSGNUM>
			<E2EDKA1_HLEVEL></E2EDKA1_HLEVEL>
			<E2EDKA1_PARVW>
				<xsl:text>AG</xsl:text>
			</E2EDKA1_PARVW>
			<E2EDKA1_PARTN>
				<xsl:if test="(../../SG2/SG2_NAD[SG2_NAD_3035='SE']/SG2_NAD_C082/SG2_NAD_C082_3039!='' and $FLAG_E2EDKA1_PARTN_NAD_3039_SE='X')">
					<xsl:value-of select="../../SG2/SG2_NAD[SG2_NAD_3035='SE']/SG2_NAD_C082/SG2_NAD_C082_3039"/>
				</xsl:if>
			</E2EDKA1_PARTN>
			<E2EDKA1_LIFNR>
				<xsl:if test="$FLAG_E2EDKA1_LIFNR_NAD_3039_MI_BY_SU_SE='X'">
					<xsl:choose>
						<xsl:when test="../../SG2/SG2_NAD[SG2_NAD_3035='BY']/SG2_NAD_C082/SG2_NAD_C082_3039!='' ">
							<xsl:value-of select="../../SG2/SG2_NAD[SG2_NAD_3035='BY']/SG2_NAD_C082/SG2_NAD_C082_3039" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="../../SG2/SG2_NAD[SG2_NAD_3035='SE']/SG2_NAD_C082/SG2_NAD_C082_3039" />
					</xsl:otherwise>
				  </xsl:choose>
				</xsl:if>
			</E2EDKA1_LIFNR>
			<E2EDKA1_SPRAS_ISO></E2EDKA1_SPRAS_ISO>
			<E2EDKA1_TITLE></E2EDKA1_TITLE>
			<rest></rest>
		</E2EDKA1>
	</xsl:template>

	<!-- Template for 'E2EDKA1' -->
	<xsl:template name="E2EDKA1_AB">
		<E2EDKA1>
			<E2EDKA1_SEGNAM></E2EDKA1_SEGNAM>
			<E2EDKA1_MANDT></E2EDKA1_MANDT>
			<E2EDKA1_DOCNUM></E2EDKA1_DOCNUM>
			<E2EDKA1_SEGNUM></E2EDKA1_SEGNUM>
			<E2EDKA1_PSGNUM></E2EDKA1_PSGNUM>
			<E2EDKA1_HLEVEL></E2EDKA1_HLEVEL>
			<E2EDKA1_PARVW>
				<xsl:text>AB</xsl:text>	
			</E2EDKA1_PARVW>
			<E2EDKA1_PARTN>
				<xsl:if test="$FLAG_E2EDKA1_PARTN_LOC_3225_11='X'">
					<xsl:choose>
		 				<xsl:when test="(not(empty(SG12_LOC[SG12_LOC_3227='11'])))">
		 					 <xsl:value-of select="SG12_LOC[SG12_LOC_3227='11']/SG12_LOC_C517/SG12_LOC_C517_3225" />
						</xsl:when>
	   				 </xsl:choose>
				</xsl:if>
				<!-- code for INEOS cusotmer -->
				<xsl:if test="$FLAG_E2EDKA1_PARTN_LOC_3225_11='Y'">
					<xsl:choose>
		 				<xsl:when test="(not(empty(../SG7/SG7_LOC[SG7_LOC_3227='11'])))">
		 					 <xsl:value-of select="../SG7/SG7_LOC[SG7_LOC_3227='11']/SG7_LOC_C517/SG7_LOC_C517_3225" />
						</xsl:when>
	   				 </xsl:choose>
	   			 </xsl:if>
			</E2EDKA1_PARTN>
			<E2EDKA1_LIFNR></E2EDKA1_LIFNR>
			<E2EDKA1_SPRAS_ISO></E2EDKA1_SPRAS_ISO>
			<E2EDKA1_TITLE></E2EDKA1_TITLE>
			<rest></rest>
		</E2EDKA1>
	</xsl:template>
	<!--Template for 'G02' -->
   <xsl:template name="G02">
		<G02>
			<xsl:call-template name="E2EDP10" />															   
			<xsl:call-template name="E2EDP36" />
			<xsl:call-template name="E2EDP15_1"/>
			<xsl:call-template name="E2EDP15_2" />
	        <xsl:for-each select="SG16">
			 <xsl:call-template name="E2EDP16_2"/>
			</xsl:for-each>				
			<xsl:for-each select="SG18">
				<xsl:call-template name="E2EDP16"/>		
			</xsl:for-each>
		</G02>
	</xsl:template>

	<!-- Template for 'E2EDP10' -->
	<xsl:template name="E2EDP10">	
		<E2EDP10>			
			<E2EDP10_SEGNAM></E2EDP10_SEGNAM>
			<E2EDP10_MANDT></E2EDP10_MANDT>
			<E2EDP10_DOCNUM></E2EDP10_DOCNUM>
			<E2EDP10_SEGNUM></E2EDP10_SEGNUM>
			<E2EDP10_PSGNUM></E2EDP10_PSGNUM>
			<E2EDP10_HLEVEL></E2EDP10_HLEVEL>
			<E2EDP10_IDNKD>
				<xsl:if test="$FLAG_E2EDP10_IDNKD_LIN_7140_IN='X' and SG12_LIN/SG12_LIN_C212[SG12_LIN_C212_7143='IN']/SG12_LIN_C212_7140!=''">
					<xsl:value-of select="SG12_LIN/SG12_LIN_C212[SG12_LIN_C212_7143='IN']/SG12_LIN_C212_7140"/>					
				</xsl:if>		
			</E2EDP10_IDNKD>
			<E2EDP10_ARKTX>
				<xsl:if test="$FLAG_E2EDP10_ARKTX_IMD_7808='X' and SG12_IMD/SG12_IMD_C273/SG12_IMD_C273_1_7008!=''">
					<xsl:value-of select="SG12_IMD/SG12_IMD_C273/SG12_IMD_C273_1_7008"/>
				</xsl:if>
			</E2EDP10_ARKTX>
			<E2EDP10_VRKME></E2EDP10_VRKME>
			<E2EDP10_KWERK>
			  	<xsl:if test="$FLAG_E2EDP10_KWERK_NAD_3039_ST='X' and ../SG7/SG7_NAD[SG7_NAD_3035='ST']/SG7_NAD_C082_3039!=''">
					<xsl:value-of select="../SG7/SG7_NAD[SG7_NAD_3035='ST']/SG7_NAD_C082_3039"/>
				</xsl:if>
			</E2EDP10_KWERK>
			<E2EDP10_KLGOR></E2EDP10_KLGOR>
			<E2EDP10_DFABL>
			<!-- Code for INEOS customer -->
			   <xsl:if test="$FLAG_E2EDP10_DFABL_LOC_3225_11='Y' and ../SG7/SG7_LOC[SG7_LOC_3227='11']/SG7_LOC_C517/SG7_LOC_C517_3225!=''">
					<xsl:value-of select="../SG7/SG7_LOC[SG7_LOC_3227='11']/SG7_LOC_C517/SG7_LOC_C517_3225"/>
			   </xsl:if>
			 <xsl:if test="$FLAG_E2EDP10_DFABL_LOC_3225_11='X' and SG12_LOC[SG12_LOC_3227='11']/SG12_LOC_C517/SG12_LOC_C517_3225!=''">
					<xsl:value-of select="SG12_LOC[SG12_LOC_3227='11']/SG12_LOC_C517/SG12_LOC_C517_3225"/>
			   </xsl:if>
			 </E2EDP10_DFABL>
			<E2EDP10_VBRST>
			<!-- Code for INEOS customer -->
			    <xsl:if test="$FLAG_E2EDP10_VBRST_LOC_3225_159='X' and ../SG7/SG7_LOC[SG7_LOC_3227='159']/SG7_LOC_C517/SG7_LOC_C517_3225!=''">
					<xsl:value-of select="../SG7/SG7_LOC[SG7_LOC_3227='159']/SG7_LOC_C517/SG7_LOC_C517_3225"/>
			   </xsl:if>
			  <xsl:if test="$FLAG_E2EDP10_VBRST_LOC_3225_159='X' and SG12_LOC[SG12_LOC_3227='159']/SG12_LOC_C517/SG12_LOC_C517_3225!=''">
					<xsl:value-of select="SG12_LOC[SG12_LOC_3227='159']/SG12_LOC_C517/SG12_LOC_C517_3225"/>
			   </xsl:if>	   
			</E2EDP10_VBRST>
			<E2EDP10_BELNR>
				<xsl:if test="$FLAG_E2EDP10_BELNR_RFF_1154_AAK='X' and SG16/SG17/SG17_RFF/SG17_RFF_C506[SG17_RFF_C506_1153='AAK']/SG17_RFF_C506_1154!=''">																	   
					<xsl:value-of select="$gv_BELNR[1]"/>
				</xsl:if>
				<!-- Code for INEOS cusotmer -->
				<xsl:if test="exists($gv_BELNR_SG17_RFF_1154_AAU) and $FLAG_E2EDP10_BELNR_RFF_1154_AAU='X'">																	   
					<xsl:value-of select="$gv_BELNR_SG17_RFF_1154_AAU[1]"/>
				</xsl:if>						
			</E2EDP10_BELNR>
	    	<E2EDP10_LFIMG>
				<xsl:if test="exists($gv_LFIMG) and $FLAG_E2EDP10_LFIMG_QTY_6060_12='X'">											
					<xsl:value-of select="$gv_LFIMG[1]"/>
				</xsl:if>
				<!-- Code for INEOS customer -->
				<xsl:if test="exists($gv_LFIMG_QTY_6060_194) and $FLAG_E2EDP10_LFIMG_QTY_6060_194='X'">											
					<xsl:value-of select="$gv_LFIMG_QTY_6060_194[1]"/>
				</xsl:if>
			</E2EDP10_LFIMG>
			<E2EDP10_VEMNG></E2EDP10_VEMNG>
			<E2EDP10_LIDTL>
				<xsl:if test="$FLAG_E2EDP10_LIDTL_DTM_2380_11='X' and SG16/SG16_DTM/SG16_DTM_C507[SG16_DTM_C507_2005='11']/SG16_DTM_C507_2380!=''">
 					<xsl:value-of select="$gv_LIDTL[1]"/>
 				</xsl:if>
 				<!-- Code for INEOS customer -->
 				<xsl:if test="exists($gv_LIDTL_DTM_2380_171) and $FLAG_E2EDP10_LIDTL_DTM_2380_171='X'">
 					<xsl:value-of select="$gv_LIDTL_DTM_2380_171[1]"/>
 				</xsl:if>
 				<!-- Code for GKN customer -->
 				<xsl:if test="$FLAG_E2EDP10_LIDTL_DTM_2380_50='X' and SG16/SG16_DTM/SG16_DTM_C507[SG16_DTM_C507_2005='50']/SG16_DTM_C507_2380!=''">
 					<xsl:value-of select="$lv_LIDTL_DTM_2380_50[1]"/>
 				</xsl:if>
			</E2EDP10_LIDTL>
			<E2EDP10_LIFST></E2EDP10_LIFST>
			<E2EDP10_KRITB></E2EDP10_KRITB>
			<E2EDP10_ABHOR>	</E2EDP10_ABHOR>
			<E2EDP10_ABDAT></E2EDP10_ABDAT>
			<E2EDP10_FZDIF></E2EDP10_FZDIF>
			<E2EDP10_AKUBM>
			</E2EDP10_AKUBM>
			<E2EDP10_AKUEM>
				<xsl:if test="$FLAG_E2EDP10_AKUEM_QTY_6060_70='X' and SG16/SG16_QTY[SG16_QTY_C186_6063='70']/SG16_QTY_C186_6060!=''">
					<xsl:value-of select="SG16/SG16_QTY[SG16_QTY_C186_6063='70']/SG16_QTY_C186_6060"/>
				</xsl:if>
			</E2EDP10_AKUEM>
			<E2EDP10_DESRE></E2EDP10_DESRE>
			<E2EDP10_ECHNO></E2EDP10_ECHNO>
			<E2EDP10_ECHDT></E2EDP10_ECHDT>
			<E2EDP10_ABFDE></E2EDP10_ABFDE>
			<E2EDP10_MFADT></E2EDP10_MFADT>
			<E2EDP10_ABMDE></E2EDP10_ABMDE>
			<E2EDP10_FPSDN></E2EDP10_FPSDN>
			<E2EDP10_LABKY>
			<!--Assigns default value  -->			
			 	<xsl:value-of select="$FLAG_E2EDP10_LABKY"/>
			</E2EDP10_LABKY>
			<E2EDP10_TSTKY></E2EDP10_TSTKY>
			<E2EDP10_DOKPF></E2EDP10_DOKPF>
			<E2EDP10_KZAUS></E2EDP10_KZAUS>
			<E2EDP10_ABRAB></E2EDP10_ABRAB>
			<E2EDP10_ABRBI></E2EDP10_ABRBI>
			<E2EDP10_SCREL>			
               <!--Default SCREL settins  -->
				<xsl:value-of select="$FLAG_E2EDP10_SCREL"/>						 			  
			</E2EDP10_SCREL>
			<E2EDP10_NULDT></E2EDP10_NULDT>
			<E2EDP10_TEART></E2EDP10_TEART>
			<E2EDP10_SOLLFZ></E2EDP10_SOLLFZ>
			<E2EDP10_SOLLDT></E2EDP10_SOLLDT>
			<E2EDP10_IDNLF>
				<xsl:if test="$FLAG_E2EDP10_IDNLF_PIA_7140_SA='X' and SG12_PIA/SG12_PIA_1_C212[SG12_PIA_1_C212_7143='SA']/SG12_PIA_1_C212_7140!=''">
					<xsl:value-of select="SG12_PIA/SG12_PIA_1_C212[SG12_PIA_1_C212_7143='SA']/SG12_PIA_1_C212_7140"/>					
				</xsl:if>
				<xsl:if test="$FLAG_E2EDP10_IDNLF_PIA_7140_SA='Y' and SG12_PIA/SG12_PIA_2_C212[SG12_PIA_2_C212_7143='SA']/SG12_PIA_2_C212_7140!=''">
					<xsl:value-of select="SG12_PIA/SG12_PIA_2_C212[SG12_PIA_2_C212_7143='SA']/SG12_PIA_2_C212_7140"/>					
				</xsl:if>		
			</E2EDP10_IDNLF>
			<E2EDP10_BSTDK></E2EDP10_BSTDK>
			<E2EDP10_LABNK></E2EDP10_LABNK>
			<E2EDP10_ABNRA></E2EDP10_ABNRA>
			<E2EDP10_ABNRD></E2EDP10_ABNRD>
			<E2EDP10_VTRNR></E2EDP10_VTRNR>
			<E2EDP10_MFRFZ></E2EDP10_MFRFZ>
			<E2EDP10_POSEX></E2EDP10_POSEX>
			<E2EDP10_IDNKD_EXTERNAL></E2EDP10_IDNKD_EXTERNAL>
			<E2EDP10_IDNKD_GUID></E2EDP10_IDNKD_GUID>
			<E2EDP10_IDNKD_VERSION></E2EDP10_IDNKD_VERSION>
			<rest></rest>
		</E2EDP10>
	</xsl:template>
		
			<!--Template for 'E2EDP36' -->
	<xsl:template name="E2EDP36">
		<xsl:for-each select="SG16/SG17">
		<xsl:variable name="lv_BELNR" select="SG17_RFF/SG17_RFF_C506[SG17_RFF_C506_1153='AAU']/SG17_RFF_C506_1154" saxon:assignable="no" />							
		<xsl:variable name="lv_LFIMG" select="../SG16_QTY[SG16_QTY_C186_6063='194']/SG16_QTY_C186_6060" saxon:assignable="no" />
		<xsl:variable name="lv_LIDTL" select="SG17_DTM/SG17_DTM_C507[SG17_DTM_C507_2005='171']/SG17_DTM_C507_2380" saxon:assignable="no" />
											 
		<E2EDP36>
			<E2EDP36_SEGNAM></E2EDP36_SEGNAM>
			<E2EDP36_MANDT></E2EDP36_MANDT>
			<E2EDP36_DOCNUM></E2EDP36_DOCNUM>
			<E2EDP36_SEGNUM></E2EDP36_SEGNUM>
			<E2EDP36_PSGNUM></E2EDP36_PSGNUM>
			<E2EDP36_HLEVEL></E2EDP36_HLEVEL>
			<E2EDP36_LIFST></E2EDP36_LIFST>
		<E2EDP36_BELNR>
				<xsl:if test="exists($lv_BELNR)and $FLAG_E2EDP36_BELNR_RFF_1154_AAU='X'">
			    <xsl:if test="position()!=1">
			    <xsl:value-of select="$lv_BELNR"/>
			  </xsl:if>			
			   </xsl:if>
			</E2EDP36_BELNR>
			<E2EDP36_BELDAT>
			</E2EDP36_BELDAT>
			<E2EDP36_BELTIM></E2EDP36_BELTIM>
			<E2EDP36_LFIMG>
				<xsl:if test="exists($lv_LFIMG) and $FLAG_E2EDP36_LFIMG_QTY_6060_194='X'">
			      <xsl:if test="position()!=1">
			     <xsl:value-of select="$lv_LFIMG"/>	
			 </xsl:if>   
			 </xsl:if> 
			</E2EDP36_LFIMG>
			<E2EDP36_VRKME></E2EDP36_VRKME>
			<E2EDP36_VEMNG></E2EDP36_VEMNG>
			<E2EDP36_LIKME></E2EDP36_LIKME>
			<E2EDP36_LIDTL>
				<xsl:if test="exists($lv_LIDTL) and $FLAG_E2EDP36_LIDTL_DTM_2380_171='X'">
			     	<xsl:if test="position()!=1">
			     <xsl:value-of select="$lv_LIDTL"/>	
			 </xsl:if> 
			 </xsl:if> 
			</E2EDP36_LIDTL>
			<E2EDP36_LIDTIM></E2EDP36_LIDTIM>
			<rest></rest>
		</E2EDP36>
		</xsl:for-each>
	</xsl:template> 
   
	<!-- Template for 'E2EDP14'-->
	<xsl:template name="E2EDP14">
		<E2EDP14>
			<E2EDP14_SEGNAM></E2EDP14_SEGNAM>
			<E2EDP14_MANDT></E2EDP14_MANDT>
			<E2EDP14_DOCNUM></E2EDP14_DOCNUM>
			<E2EDP14_SEGNUM></E2EDP14_SEGNUM>
			<E2EDP14_PSGNUM></E2EDP14_PSGNUM>
			<E2EDP14_HLEVEL></E2EDP14_HLEVEL>
			<E2EDP14_PCKAR></E2EDP14_PCKAR>
			<E2EDP14_PCKNR></E2EDP14_PCKNR>
			<E2EDP14_ANZPK></E2EDP14_ANZPK>
			<E2EDP14_PCKSL></E2EDP14_PCKSL>
			<E2EDP14_ANZAR></E2EDP14_ANZAR>
			<E2EDP14_MAZAR></E2EDP14_MAZAR>
			<rest></rest>
		</E2EDP14>
	</xsl:template> 

	<!-- Template for 'E2EDP15'-->
	<xsl:template name="E2EDP15_1">
		<E2EDP15>
			<E2EDP15_SEGNAM></E2EDP15_SEGNAM>
			<E2EDP15_MANDT></E2EDP15_MANDT>
			<E2EDP15_DOCNUM></E2EDP15_DOCNUM>
			<E2EDP15_SEGNUM></E2EDP15_SEGNUM>
			<E2EDP15_PSGNUM></E2EDP15_PSGNUM>
			<E2EDP15_HLEVEL></E2EDP15_HLEVEL>
			<E2EDP15_TDNAME>YAQU</E2EDP15_TDNAME>
			<E2EDP15_SPRAS>EN</E2EDP15_SPRAS>
			<E2EDP15_TXTLF></E2EDP15_TXTLF>
			<E2EDP15_TXT01>CUST</E2EDP15_TXT01>
			<E2EDP15_TXT02></E2EDP15_TXT02>
			<E2EDP15_TXT03></E2EDP15_TXT03>			
			<E2EDP15_TXT04></E2EDP15_TXT04>
			<E2EDP15_TXT05></E2EDP15_TXT05>
			<E2EDP15_TXT06></E2EDP15_TXT06>
			<E2EDP15_TXT07></E2EDP15_TXT07>
			<E2EDP15_TXT08></E2EDP15_TXT08>
			<E2EDP15_TXT09></E2EDP15_TXT09>
			<E2EDP15_TXT10></E2EDP15_TXT10>
			<E2EDP15_TXT11></E2EDP15_TXT11>
			<E2EDP15_TXT12></E2EDP15_TXT12>
			<E2EDP15_TXT13></E2EDP15_TXT13>
			<E2EDP15_TXT14></E2EDP15_TXT14>
			<E2EDP15_TSSPRAS_ISO></E2EDP15_TSSPRAS_ISO>
			<rest></rest>
		</E2EDP15>
	</xsl:template> 
	
	<!-- Template for 'E2EDP15' -->
	<xsl:template name="E2EDP15_2">
		<E2EDP15>
			<E2EDP15_SEGNAM></E2EDP15_SEGNAM>
			<E2EDP15_MANDT></E2EDP15_MANDT>
			<E2EDP15_DOCNUM></E2EDP15_DOCNUM>
			<E2EDP15_SEGNUM></E2EDP15_SEGNUM>
			<E2EDP15_PSGNUM></E2EDP15_PSGNUM>
			<E2EDP15_HLEVEL></E2EDP15_HLEVEL>
			<E2EDP15_TDNAME>YADT</E2EDP15_TDNAME>
			<E2EDP15_SPRAS>EN</E2EDP15_SPRAS>
			<E2EDP15_TXTLF></E2EDP15_TXTLF>
			<E2EDP15_TXT01>
				<xsl:value-of select="$FLAG_E2EDP15_TXT01"/>
			</E2EDP15_TXT01>
			<E2EDP15_TXT02>
				<xsl:if test="$FLAG_E2EDP15_TXT02_IMD_7008='X'">
					<xsl:value-of select="SG12_IMD/SG12_IMD_C273/SG12_IMD_C273_1_7008"/>
			     </xsl:if>
			     <!-- Code for GKN Customer -->
			     <xsl:if test="$FLAG_E2EDP15_TXT02_NAD_3039_BY_SE='X'">
			       <xsl:choose>
						<xsl:when test="../../SG2/SG2_NAD[SG2_NAD_3035='BY']/SG2_NAD_C082/SG2_NAD_C082_3039!=''">							
							<xsl:value-of select="../../SG2/SG2_NAD[SG2_NAD_3035='BY']/SG2_NAD_C082/SG2_NAD_C082_3039"/>		
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="../../SG2/SG2_NAD[SG2_NAD_3035='SE']/SG2_NAD_C082/SG2_NAD_C082_3039"/>						
						</xsl:otherwise>
				  	</xsl:choose>
				  </xsl:if>
				</E2EDP15_TXT02>
			<E2EDP15_TXT03>
				<xsl:value-of select="$FLAG_E2EDP15_TXT03"/>
			</E2EDP15_TXT03>			
			<E2EDP15_TXT04>
				<xsl:if test="$FLAG_E2EDP15_TXT04_NAD_3039_BY_SE='X'">
					<xsl:choose>
						<xsl:when test="../../SG2/SG2_NAD[SG2_NAD_3035='BY']/SG2_NAD_C082/SG2_NAD_C082_3039!=''">							
							<xsl:value-of select="../../SG2/SG2_NAD[SG2_NAD_3035='BY']/SG2_NAD_C082/SG2_NAD_C082_3039"/>		
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="../../SG2/SG2_NAD[SG2_NAD_3035='SE']/SG2_NAD_C082/SG2_NAD_C082_3039"/>						
						</xsl:otherwise>
				  	</xsl:choose>
				</xsl:if>
				<!-- Code for GKN customer -->
				<xsl:if test="$FLAG_E2EDP15_TXT04_RFF_1154_ON='X'">
			<xsl:choose>
		 		 <xsl:when test="(not(empty(SG13/SG13_RFF/SG13_RFF_C506[SG13_RFF_C506_1153='ON']))and $FLAG_E2EDK09_VTRNR_RFF_1154_ON='X')">
		  					<xsl:value-of select="SG13/SG13_RFF/SG13_RFF_C506[SG13_RFF_C506_1153='ON']/SG13_RFF_C506_1154" />
		 		  </xsl:when>
	    		</xsl:choose>
	    		</xsl:if>
			</E2EDP15_TXT04>
			<E2EDP15_TXT05>
				<xsl:value-of select="$FLAG_E2EDP15_TXT05"/>
			</E2EDP15_TXT05>
			<E2EDP15_TXT06>
			  <xsl:if test="$FLAG_E2EDP15_TXT06_RFF_1154_ON='X'">
				<xsl:choose>
		 		 <xsl:when test="(not(empty(SG13/SG13_RFF/SG13_RFF_C506[SG13_RFF_C506_1153='ON']))and $FLAG_E2EDK09_VTRNR_RFF_1154_ON='X')">
		  					<xsl:value-of select="SG13/SG13_RFF/SG13_RFF_C506[SG13_RFF_C506_1153='ON']/SG13_RFF_C506_1154" />
		 		  </xsl:when>
	    		</xsl:choose>
			   </xsl:if> 
			</E2EDP15_TXT06>
			<E2EDP15_TXT07>
				<xsl:value-of select="$FLAG_E2EDP15_TXT07"/>
			</E2EDP15_TXT07>
			<E2EDP15_TXT08>
			  <xsl:if test="$FLAG_E2EDP15_TXT08_LIN_7143_IN='X'">
			    <xsl:if test="SG12_LIN/SG12_LIN_C212[SG12_LIN_C212_7143='IN']!=''">
					<xsl:value-of select="SG12_LIN[SG12_LIN_C212/SG12_LIN_C212_7143='IN']/SG12_LIN_1082"/>							
				</xsl:if>
			  </xsl:if>	
			</E2EDP15_TXT08>
			<E2EDP15_TXT09>
				<xsl:value-of select="$FLAG_E2EDP15_TXT09"/>
			</E2EDP15_TXT09>
			<E2EDP15_TXT10>
				<xsl:if test="$FLAG_E2EDP15_TXT10_FTX_4451_AAI='X'">
					<xsl:value-of select="SG12_FTX[SG12_FTX_4451='AAI']/SG12_FTX_C108/SG12_FTX_C108_1_4440"/>					
				</xsl:if>
			</E2EDP15_TXT10>
			<E2EDP15_TXT11>
				<xsl:value-of select="$FLAG_E2EDP15_TXT11"/>
			</E2EDP15_TXT11>
			<E2EDP15_TXT12>
				<xsl:if test="$FLAG_E2EDP15_TXT12_PIA_C212_7143_SA='X'">
				<xsl:value-of select="SG12_PIA/SG12_PIA_1_C212/SG12_PIA_1_C212_7140"/>
				</xsl:if>
			</E2EDP15_TXT12>	
			<E2EDP15_TXT13></E2EDP15_TXT13>
			<E2EDP15_TXT14></E2EDP15_TXT14>
			<E2EDP15_TSSPRAS_ISO></E2EDP15_TSSPRAS_ISO>
			<rest></rest>
		</E2EDP15>
	</xsl:template>
					
		
	<!-- Template for 'E2EDP16'-->
	<xsl:template name="E2EDP16">
		<E2EDP16>
			<E2EDP16_SEGNAM></E2EDP16_SEGNAM>
			<E2EDP16_MANDT></E2EDP16_MANDT>
			<E2EDP16_DOCNUM></E2EDP16_DOCNUM>
			<E2EDP16_SEGNUM></E2EDP16_SEGNUM>
			<E2EDP16_PSGNUM></E2EDP16_PSGNUM>
			<E2EDP16_HLEVEL></E2EDP16_HLEVEL>
			<E2EDP16_ETTYP>	
				<xsl:if test="$FLAG_E2EDP16_ETTYP_SCC_4017='X' ">
				  <xsl:if test="SG18_SCC[SG18_SCC_4017 ='4']!=''">
				    <xsl:value-of select="SG18_SCC[SG18_SCC_4017 ='4']/SG18_SCC_4017"/>
				  </xsl:if>
				  <xsl:if test="SG18_SCC[SG18_SCC_4017 ='1']!=''">
				    <xsl:value-of select="SG18_SCC[SG18_SCC_4017 ='1']/SG18_SCC_4017"/>
				  </xsl:if>
				  <xsl:if test="SG18_SCC[SG18_SCC_4017 ='10']!=''">
				    <xsl:value-of select="substring(SG18_SCC[SG18_SCC_4017 ='10']/SG18_SCC_4017,1,1)"/>
				  </xsl:if> 
				</xsl:if>
											
			</E2EDP16_ETTYP>
			
			 <!-- VARIABLE DECLARTION --> 
			 <xsl:variable name="EDATUV" select="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='64']/SG19_DTM_C507_2380"/>
			 <xsl:variable name="EDATUB" select="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='63']/SG19_DTM_C507_2380"/>
			 <xsl:variable name="EDATUV_day" select="bosch:number(substring(SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='64']/SG19_DTM_C507_2380,7,2))"/>
			 <xsl:variable name="EDATUB_day" select="bosch:number(substring(SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='63']/SG19_DTM_C507_2380,7,2))"/>
			 <xsl:variable name="EDATUV_month" select="bosch:number(substring(SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='64']/SG19_DTM_C507_2380,5,2))"/>
			 <xsl:variable name="EDATUB_month" select="bosch:number(substring(SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='63']/SG19_DTM_C507_2380,5,2))"/>
			 <xsl:variable name="EDATUB_year" select="bosch:number(substring(SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='63']/SG19_DTM_C507_2380,1,4))"/>
			 <xsl:variable name="PRGRS_M" select="bosch:number(bosch:last-day-of-month($EDATUB_month,$EDATUB_year)) "/>
			 
			 <xsl:variable name="EDATUV_day_234" select="bosch:number(substring(SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='234']/SG19_DTM_C507_2380,7,2))"/>
			 <xsl:variable name="EDATUB_day_235" select="bosch:number(substring(SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='235']/SG19_DTM_C507_2380,7,2))"/>
			 <xsl:variable name="EDATUB_month_235" select="bosch:number(substring(SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='235']/SG19_DTM_C507_2380,5,2))"/>
			 <xsl:variable name="EDATUB_year_235" select="bosch:number(substring(SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='235']/SG19_DTM_C507_2380,1,4))"/>
			 <xsl:variable name="EDATUV_234" select="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='234']/SG19_DTM_C507_2380"/>
			 <xsl:variable name="EDATUB_235" select="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='235']/SG19_DTM_C507_2380"/>			
             <xsl:variable name="PRGRS_M_235" select="bosch:number(bosch:last-day-of-month($EDATUB_month_235,$EDATUB_year_235)) "/> 
             
             <xsl:variable name="PRGRS_10"> 
              <xsl:choose>
               <xsl:when test="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='10']/SG19_DTM_C507_2380">
			             <xsl:text>D</xsl:text>	
			   </xsl:when>
			  </xsl:choose> 
             </xsl:variable>
             
             <xsl:variable name="PRGRS_2"> 
              <xsl:choose>
               <xsl:when test="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='2']/SG19_DTM_C507_2380">
			             <xsl:text>D</xsl:text>	
			   </xsl:when>
			  </xsl:choose> 
             </xsl:variable>
             <xsl:variable name="PRGRS">	
 					   <!-- If DTM_C507_2005 ='2', then PRGRS='D' -->
 					 <xsl:choose>  
 					   
 					   <!-- <xsl:when test="$EDATUB - $EDATUV = 0"> -->
 					   <xsl:when test="$EDATUB_day - $EDATUV_day = 0">
 						  <xsl:text>D</xsl:text>	
 					   </xsl:when> 
 					   <!-- PRGRS='W'  EDATUV is a Monday and EDATUB is a Sunday -->
				       <xsl:when test="bosch:calculate-day-of-the-week($EDATUV) = 1 and bosch:calculate-day-of-the-week($EDATUB) = 0 and ($EDATUB_day - $EDATUV_day = 6)">
								<xsl:text>W</xsl:text>
					   </xsl:when>
						  <!-- EDATUB is last day of the month and EDATUV is first day of the month -->
						<xsl:when test="$PRGRS_M= $EDATUB_day and $EDATUV_day=01 and SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='64']/SG19_DTM_C507_2380!='' and ($EDATUV_month = $EDATUB_month) ">
 							   <xsl:text>M</xsl:text>
 						</xsl:when>
 						<xsl:otherwise>
 						     <xsl:text>I</xsl:text>
 						</xsl:otherwise>
 					 </xsl:choose>		 
 			</xsl:variable>
 			
 			<xsl:variable name="PRGRS_234_235">	
 					   <!-- If DTM_C507_2005 ='2', then PRGRS='D' -->
 					 <xsl:choose>  	    
 					   <xsl:when test="$EDATUB_day_235 - $EDATUV_day_234 = 0">
 						  <xsl:text>D</xsl:text>	
 					   </xsl:when> 					 						
 						 <!-- PRGRS='W'  EDATUV is a Monday and EDATUB is a Sunday -->
				    
					   <xsl:when test="bosch:calculate-day-of-the-week($EDATUV_234) = 1 and bosch:calculate-day-of-the-week($EDATUB_235) = 0">
								<xsl:text>W</xsl:text>
					   </xsl:when>	 
						  <!-- EDATUB is last day of the month and EDATUV is first day of the month -->
				
 					   <xsl:when test="$PRGRS_M_235= $EDATUB_day_235 and $EDATUV_day_234=01 and SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='234']/SG19_DTM_C507_2380!='' ">
 							   <xsl:text>M</xsl:text>
 						</xsl:when>
 						<xsl:otherwise>
 						     <xsl:text>I</xsl:text>
 						</xsl:otherwise>
 					 </xsl:choose>		 
 			</xsl:variable>
 									
 			<E2EDP16_PRGRS>
 			  <xsl:if test="$FLAG_E2EDP16_PRGRS_SCC_2013='X'">
			    <xsl:choose>
			     <xsl:when test="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='64']/SG19_DTM_C507_2380!=''">
			       <xsl:value-of select="$PRGRS "/>
			     </xsl:when>  
			    </xsl:choose>
			    
			    <xsl:choose>
			     <xsl:when test="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='10']/SG19_DTM_C507_2380!=''">
			       <xsl:value-of select="$PRGRS_10"/>
			     </xsl:when>  
			    </xsl:choose>
			    
			    <xsl:choose>
			     <xsl:when test="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='2']/SG19_DTM_C507_2380!=''">
			       <xsl:value-of select="$PRGRS_2 "/>
			     </xsl:when>  
			    </xsl:choose>
			    <xsl:choose>
			     <xsl:when test="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='234']/SG19_DTM_C507_2380!=''">
			       <xsl:value-of select="$PRGRS_234_235 "/>
			     </xsl:when>  
			    </xsl:choose> 
				</xsl:if>
			</E2EDP16_PRGRS>
			
			<E2EDP16_EDATUV>
			      <!--DTM_C507_2005 ='10' then populate DTM_C507_2380  -->
			 <xsl:if test="$FLAG_E2EDP16_EDATUB_DTM_2380_10='X'">     
			  <xsl:choose>
			    <xsl:when test="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='10']/SG19_DTM_C507_2380">
			     <xsl:value-of select="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='10']/SG19_DTM_C507_2380"/>
			    </xsl:when>
			   </xsl:choose>
			 </xsl:if>  
			          <!--DTM_C507_2005 ='2' then populate DTM_C507_2380  -->	
			  <xsl:if test="$FLAG_E2EDP16_EDATUV_DTM_2380_2='X'">
			   <xsl:choose>
			    <xsl:when test="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='2']/SG19_DTM_C507_2380">
			     <xsl:value-of select="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='2']/SG19_DTM_C507_2380"/>
			    </xsl:when>
			   </xsl:choose>				
			  </xsl:if>
			       <!--DTM_C507_2005 ='64' then populate DTM_C507_2380  -->
			  <xsl:if test="$FLAG_E2EDP16_EDATUV_DTM_2380_64='X'">
			   <xsl:choose>
			    <xsl:when test="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='64']/SG19_DTM_C507_2380">
			     <xsl:value-of select="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='64']/SG19_DTM_C507_2380"/>
			    </xsl:when>
			   </xsl:choose>				
			  </xsl:if>
			  <!-- Code for INEOS customer -->
			  <xsl:if test="$FLAG_E2EDP16_EDATUV_DTM_2380_234='X'">
			   <xsl:choose>
			    <xsl:when test="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='234']/SG19_DTM_C507_2380">
			     <xsl:value-of select="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='234']/SG19_DTM_C507_2380"/>
			    </xsl:when>
			   </xsl:choose>				
			  </xsl:if>								 		 		 
			</E2EDP16_EDATUV>
			
			<E2EDP16_EZEIT></E2EDP16_EZEIT>
			
			<E2EDP16_EDATUB>
					<!--(PRGRS=D)& DTM_C507_2005 ='10' then populate DTM_C507_2380  -->
		     <xsl:if test="$FLAG_E2EDP16_EDATUB_DTM_2380_10='X'">				
			   <xsl:choose>
			    <xsl:when test="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='10']/SG19_DTM_C507_2380">
			     <xsl:value-of select="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='10']/SG19_DTM_C507_2380"/>
			    </xsl:when>
			   </xsl:choose>
			 </xsl:if>  
			        <!--(PRGRS=D)& DTM_C507_2005 ='2' then populate DTM_C507_2380  -->	
			  <xsl:if test="$FLAG_E2EDP16_EDATUB_DTM_2380_2='X'">
			   <xsl:choose>
			    <xsl:when test="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='2']/SG19_DTM_C507_2380">
			     <xsl:value-of select="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='2']/SG19_DTM_C507_2380"/>
			    </xsl:when>
			   </xsl:choose>				
			  </xsl:if>
			       <!--If(PRGRS=D)OR (PRGRS=I)& DTM_C507_2005 ='63' then populate DTM_C507_2380  -->
			  <xsl:if test="$FLAG_E2EDP16_EDATUB_DTM_2380_63='X'">
			   <xsl:choose>
			     <xsl:when test="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='63']/SG19_DTM_C507_2380">
			      <xsl:if test ="($PRGRS= 'D') or ($PRGRS= 'I')"> 
			        <xsl:value-of select="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='63']/SG19_DTM_C507_2380"/>
			      </xsl:if>
			     </xsl:when>
			    </xsl:choose>
			   </xsl:if>
				   
			  <!-- Code for INEOS customer -->
			   <xsl:if test="$FLAG_E2EDP16_EDATUB_DTM_2380_235='X'">
			   <xsl:choose>
			    <xsl:when test="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='235']/SG19_DTM_C507_2380">
			    <xsl:if test ="($PRGRS_234_235= 'D') or ($PRGRS_234_235= 'I')"> 
				<xsl:value-of select="SG19/SG19_DTM/SG19_DTM_C507[SG19_DTM_C507_2005 ='235']/SG19_DTM_C507_2380"/>
				</xsl:if>
			    </xsl:when>
			   </xsl:choose>				
			  </xsl:if>		  
			</E2EDP16_EDATUB>
 
			<E2EDP16_ETVTF></E2EDP16_ETVTF>
			<E2EDP16_WMENG>
			   <!-- QTY =84 & FLAG_E2EDP16_WMENG_QTY_6060_84='X' -->
				<xsl:if test="$FLAG_E2EDP16_WMENG_QTY_6060_84='X'">							
		 			<xsl:value-of select="SG19/SG19_QTY/SG19_QTY_C186[SG19_QTY_C186_6063 = '84']/SG19_QTY_C186_6060"/>
		 		</xsl:if>
			     	<!-- QTY =113 & FLAG_E2EDP16_WMENG_QTY_6060_113='X' -->
				<xsl:if test="$FLAG_E2EDP16_WMENG_QTY_6060_113='X'">							
		 			<xsl:value-of select="SG19/SG19_QTY/SG19_QTY_C186[SG19_QTY_C186_6063 = '113']/SG19_QTY_C186_6060"/>
		 		</xsl:if>
		 			<!-- QTY=1 & FLAG_E2EDP16_WMENG_QTY_6060_1='X'-->
		 		<xsl:if test="$FLAG_E2EDP16_WMENG_QTY_6060_1='X'">							
		 			<xsl:value-of select="SG19/SG19_QTY/SG19_QTY_C186[SG19_QTY_C186_6063 = '1']/SG19_QTY_C186_6060"/>
		 		</xsl:if>
			</E2EDP16_WMENG>
		</E2EDP16>
	</xsl:template> 
	<xsl:template name="E2EDP16_2">
		<E2EDP16>
			<E2EDP16_SEGNAM></E2EDP16_SEGNAM>
			<E2EDP16_MANDT></E2EDP16_MANDT>
			<E2EDP16_DOCNUM></E2EDP16_DOCNUM>
			<E2EDP16_SEGNUM></E2EDP16_SEGNUM>
			<E2EDP16_PSGNUM></E2EDP16_PSGNUM>
			<E2EDP16_HLEVEL></E2EDP16_HLEVEL>
			<E2EDP16_ETTYP>	
				
				    <!-- BACKORDER -->
				  <xsl:if test="$FLAG_E2EDP16_BACK_ORDER='X' and SG16_QTY[SG16_QTY_C186_6063='83']/SG16_QTY_C186_6060!=''">															
						<xsl:text>1</xsl:text>
				  </xsl:if>
				   <!-- BACKORDER -->
				  <xsl:if test="$FLAG_E2EDP16_URGENT_DELIVERY='X' and SG16_QTY[SG16_QTY_C186_6063='84']/SG16_QTY_C186_6060!=''">															
						<xsl:text>1</xsl:text>
				  </xsl:if>								
			</E2EDP16_ETTYP>
 									
 			<E2EDP16_PRGRS>
 			  
			    <!-- backorder -->
			     <xsl:choose>
 				  <xsl:when test="$FLAG_E2EDP16_BACK_ORDER='X' and SG16_QTY[SG16_QTY_C186_6063='83']/SG16_QTY_C186_6060!=''">															
					<xsl:text>D</xsl:text>
				  </xsl:when>
				  <xsl:when test="$FLAG_E2EDP16_URGENT_DELIVERY='X' and SG16_QTY[SG16_QTY_C186_6063='84']/SG16_QTY_C186_6060!=''">															
				    <xsl:text>D</xsl:text>
				  </xsl:when>
				 </xsl:choose> 
				
			</E2EDP16_PRGRS>
			
			<E2EDP16_EDATUV>
			  <!-- backorder -->
			  <xsl:if test="$FLAG_E2EDP16_BACK_ORDER='X' and SG16_QTY[SG16_QTY_C186_6063='83']/SG16_QTY_C186_6060!=''">																			
				<xsl:value-of select="/ACTIS/SG0/SG0_DTM/SG0_DTM_C507[SG0_DTM_C507_2005='137']/SG0_DTM_C507_2380"/>
			  </xsl:if>	
			  <!-- backorder -->
			  <xsl:if test="$FLAG_E2EDP16_URGENT_DELIVERY='X' and SG16_QTY[SG16_QTY_C186_6063='84']/SG16_QTY_C186_6060!=''">																			  
				    <xsl:value-of select="/ACTIS/SG0/SG0_DTM/SG0_DTM_C507[SG0_DTM_C507_2005='137']/SG0_DTM_C507_2380"/>			  
			  </xsl:if>										 		 		 
			</E2EDP16_EDATUV>
			
			<E2EDP16_EZEIT></E2EDP16_EZEIT>
			
			<E2EDP16_EDATUB>
				  <!-- backorder -->
			  <xsl:if test="$FLAG_E2EDP16_BACK_ORDER='X' and SG16_QTY[SG16_QTY_C186_6063='83']/SG16_QTY_C186_6060!=''">																		
				<xsl:value-of select="/ACTIS/SG0/SG0_DTM/SG0_DTM_C507[SG0_DTM_C507_2005='137']/SG0_DTM_C507_2380"/>
			  </xsl:if>
			  <!-- backorder -->
			  <xsl:if test="$FLAG_E2EDP16_URGENT_DELIVERY='X' and SG16_QTY[SG16_QTY_C186_6063='84']/SG16_QTY_C186_6060!=''">																		  
				 <xsl:value-of select="/ACTIS/SG0/SG0_DTM/SG0_DTM_C507[SG0_DTM_C507_2005='137']/SG0_DTM_C507_2380"/>
			  </xsl:if>			  
			</E2EDP16_EDATUB>
 
			<E2EDP16_ETVTF></E2EDP16_ETVTF>
			<E2EDP16_WMENG>
		 		<!-- backorder -->
			      <xsl:if test="$FLAG_E2EDP16_BACK_ORDER='X' and SG16_QTY[SG16_QTY_C186_6063='83']/SG16_QTY_C186_6060!=''">															
				  <xsl:value-of select="SG16_QTY[SG16_QTY_C186_6063='83']/SG16_QTY_C186_6060"/>
			      </xsl:if> 
			  <!-- backorder -->
			  <xsl:if test="$FLAG_E2EDP16_URGENT_DELIVERY='X' and SG16_QTY[SG16_QTY_C186_6063='84']/SG16_QTY_C186_6060!=''">																			
				   <xsl:value-of select="SG16_QTY[SG16_QTY_C186_6063='84']/SG16_QTY_C186_6060"/>   
			  </xsl:if>
			</E2EDP16_WMENG>
		</E2EDP16>
	</xsl:template> 		
</xsl:stylesheet>