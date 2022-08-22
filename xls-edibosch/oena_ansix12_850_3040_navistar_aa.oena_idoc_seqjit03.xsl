<?xml version="1.0" encoding="UTF-8"?>
<!--
#
# $Header:$
# Mapping ANSI X12 850 -> IDOC SEQJIT03
# Source description: oena_ansix12_850_3040.fde
# Target description: oena_idoc_seqjit03.fde
#
# $Log:$
# date		| user							| comment
# ..............................................................................................
# 20211116  | Fernando Silva - SO/OPM74-BR  | Initial map creation - EDICUSTOMERREQUEST-5981
# 20220519	| Fernando Silva - SO/OPM74-BR	| Change Spec v2.0.2   - EDICUSTOMERREQUEST-6892
#
-->
<!--Stylesheet was automatically generated on Dec 09, 2020 4:59:07 PM-->
<xsl:stylesheet version="2.0" 
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
				xmlns:XmlTransform="java:de.axway.converter.xml.xsltextensions.XsltExtensions" 
				exclude-result-prefixes="XmlTransform"
				xmlns:xs="http://www.w3.org/2001/XMLSchema"
				xmlns:fn="http://www.w3.org/2005/xpath-functions"
				xmlns:err="http://www.w3.org/2005/xqt-errors"
				xmlns:saxon="http://saxon.sf.net/"
				xmlns:bosch="http://www.bosch.com"
				xmlns:exslt="http://exslt.org/common"
				extension-element-prefixes="saxon xs fn err bosch XmlTransform exslt">
				
	<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
	<xsl:variable name="gv_mapping" select="'oena_ansix12_850_3040_navistar_aa.oena_idoc_seqjit03.xsl'" saxon:assignable="yes"/>
	
<!-- #####################################################TSIM Parameters#########################################################  -->		

	<!--Parameters and Variables -->
	<xsl:param name="ACTISEDI" select="''"/>
	<xsl:param name="PPATH" select="''"/>
	<xsl:param name="CIMTYP" select="''"/>
	<xsl:param name="IDOCTYP" select="''"/>
	<xsl:param name="MESTYP" select="''"/>
	<xsl:param name="MESCOD" select="''"/>
	<xsl:param name="STD" select="''"/>
	<xsl:param name="STDVRS" select="''"/>
	<xsl:param name="STDMES" select="''"/>
	<xsl:param name="SNDPRN" select="''"/>
	<xsl:param name="SNDPOR" select="''"/>
	<xsl:param name="SNDPRT" select="''"/>
	<xsl:param name="SNDPFC" select="''"/>
	<xsl:param name="RCVPOR" select="''"/>
	<xsl:param name="RCVPRN" select="''"/>
	<xsl:param name="RCVPRT" select="''"/>
	<xsl:param name="RCVPFC" select="''"/>
	<xsl:param name="JOBID" select="''"/>
	<xsl:param name="PARTNER" select="''"/>
	<xsl:param name="stepfile" select="''"/>

<!-- #####################################################Variables Declaration#####################################################  -->	
	
	<!--SNDPRN / XmlTransform:getPropertyActisedi to use table in text format - make the conversion-->
	<xsl:variable name="gv_SNDPRN" select="XmlTransform:getPropertyActisedi('/lib/convert/tftab/OENA_CODETAB_INBOUND_PARTNER',concat(/X12_3040_850/S_GS/GS_142,/X12_3040_850/S_GS/GS_124,'#SNDPRN'))" saxon:assignable="yes"/>
	<!--Date, Time from XSLT 2.0 functions--> 
	<xsl:variable name="gv_docdate" select="format-date(current-date(),'[Y0001][M01][D01]')"/>
	<xsl:variable name="gv_doctime" select="format-time(current-time(),'[H01][m01][s01]')"/>
	<xsl:variable name="gv_PO1_234_BP" select="''" saxon:assignable="yes"/>
	<xsl:variable name="gv_PO1_234_PD" select="''" saxon:assignable="yes"/>
	
<!-- #####################################################Begin Map Template#########################################################  -->

	<!--Template for root element -->
	<xsl:template match="/">
		<ACTIS>
			<xsl:call-template name="IDoc" />
		</ACTIS>
		
		<!--Write stepfile name to log file-->
		<xsl:message terminate="no">
			<xsl:text>STEPFILE: </xsl:text>
			<xsl:value-of select="$stepfile" />
		</xsl:message>
		
		<xsl:message terminate="no">
			<xsl:text>XSL: </xsl:text>
			<xsl:value-of select="$gv_mapping" />
		</xsl:message>
		
		<xsl:choose>
			<xsl:when test="$gv_SNDPRN"/>
			<xsl:otherwise>
				<xsl:message terminate="yes">
					<xsl:text>ERROR: no value found in the table OENA_CODETAB_INBOUND_PARTNER for </xsl:text>
					<xsl:text>EDICode : </xsl:text><xsl:value-of select="concat(/X12_3040_850/S_GS/GS_142,/X12_3040_850/S_GS/GS_124,'#SNDPRN')" />
				</xsl:message>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>	
	
<!-- #####################################################Define Message Structure (Segments)########################################  -->

	<!--Template for 'IDoc' -->
	<xsl:template name="IDoc">
		<xsl:for-each select="X12_3040_850">
			<xsl:for-each select="G_SG0">
				<xsl:for-each select="G_PO1">
					<saxon:assign name="gv_PO1_234_BP" select="''"/>
					<saxon:assign name="gv_PO1_234_PD" select="''"/>
					<xsl:choose>
						<xsl:when test="S_PO1/PO1_235_2 = 'BP'">
							<saxon:assign name="gv_PO1_234_BP" select="S_PO1/PO1_234_3"/>
						</xsl:when>
						<xsl:when test="S_PO1/PO1_235_4 = 'BP'">
							<saxon:assign name="gv_PO1_234_BP" select="S_PO1/PO1_234_5"/>
						</xsl:when>
						<xsl:when test="S_PO1/PO1_235_6 = 'BP'">
							<saxon:assign name="gv_PO1_234_BP" select="S_PO1/PO1_234_7"/>
						</xsl:when>
						<xsl:when test="S_PO1/PO1_235_8 = 'BP'">
							<saxon:assign name="gv_PO1_234_BP" select="S_PO1/PO1_234_9"/>
						</xsl:when>
						<xsl:when test="S_PO1/PO1_235_10 = 'BP'">
							<saxon:assign name="gv_PO1_234_BP" select="S_PO1/PO1_234_11"/>
						</xsl:when>
						<xsl:when test="S_PO1/PO1_235_12 = 'BP'">
							<saxon:assign name="gv_PO1_234_BP" select="S_PO1/PO1_234_13"/>
						</xsl:when>
						<xsl:when test="S_PO1/PO1_235_14 = 'BP'">
							<saxon:assign name="gv_PO1_234_BP" select="S_PO1/PO1_234_15"/>
						</xsl:when>
					</xsl:choose>
					<xsl:choose>
						<xsl:when test="S_PO1/PO1_235_2 = 'PD'">
							<saxon:assign name="gv_PO1_234_PD" select="S_PO1/PO1_234_3"/>
						</xsl:when>
						<xsl:when test="S_PO1/PO1_235_4 = 'PD'">
							<saxon:assign name="gv_PO1_234_PD" select="S_PO1/PO1_234_5"/>
						</xsl:when>
						<xsl:when test="S_PO1/PO1_235_6 = 'PD'">
							<saxon:assign name="gv_PO1_234_PD" select="S_PO1/PO1_234_7"/>
						</xsl:when>
						<xsl:when test="S_PO1/PO1_235_8 = 'PD'">
							<saxon:assign name="gv_PO1_234_PD" select="S_PO1/PO1_234_9"/>
						</xsl:when>
						<xsl:when test="S_PO1/PO1_235_10 = 'PD'">
							<saxon:assign name="gv_PO1_234_PD" select="S_PO1/PO1_234_11"/>
						</xsl:when>
						<xsl:when test="S_PO1/PO1_235_8 = 'PD'">
							<saxon:assign name="gv_PO1_234_PD" select="S_PO1/PO1_234_9"/>
						</xsl:when>
						<xsl:when test="S_PO1/PO1_235_10 = 'PD'">
							<saxon:assign name="gv_PO1_234_PD" select="S_PO1/PO1_234_11"/>
						</xsl:when>
						<xsl:when test="S_PO1/PO1_235_12 = 'PD'">
							<saxon:assign name="gv_PO1_234_PD" select="S_PO1/PO1_234_13"/>
						</xsl:when>
						<xsl:when test="S_PO1/PO1_235_14 = 'PD'">
							<saxon:assign name="gv_PO1_234_PD" select="S_PO1/PO1_234_15"/>
						</xsl:when>
					</xsl:choose>
									
					<xsl:for-each select="S_SCH_2_6800">
						<IDoc>
							<xsl:call-template name="EDI_DC40" />
							<xsl:call-template name="G01" />
						</IDoc>
					</xsl:for-each>
					
				</xsl:for-each>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>

	<!--Template for 'G01' -->
	<xsl:template name="G01">
		<G01>
			<xsl:call-template name="E2KSJCL" />
			<xsl:call-template name="E2EDKR1" />
			<xsl:call-template name="G02" />
		</G01>
	</xsl:template>	
	
	<!--Template for 'G02' -->
	<xsl:template name="G02">
		<G02>
			<xsl:call-template name="E2PSJCL" />
			<xsl:call-template name="E2EDPR1" />
			<xsl:call-template name="E2EDPT3" />
		</G02>
	</xsl:template>
		
<!-- #####################################################Define Xpath data for Message (Body)#######################################  -->

	<!--Template for 'EDI_DC40' -->
	<xsl:template name="EDI_DC40">
		<EDI_DC40>
			<EDI_DC40_TABNAM>
				<!--Please insert the transformation instruction here-->
			</EDI_DC40_TABNAM>
			<EDI_DC40_MANDT>
				<!--Please insert the transformation instruction here-->
			</EDI_DC40_MANDT>
			<EDI_DC40_DOCNUM>
				<!--Please insert the transformation instruction here-->
			</EDI_DC40_DOCNUM>
			<EDI_DC40_DOCREL>
				<!--Please insert the transformation instruction here-->
			</EDI_DC40_DOCREL>
			<EDI_DC40_STATUS>
				<!--Please insert the transformation instruction here-->
			</EDI_DC40_STATUS>
			<EDI_DC40_DIRECT>
				<xsl:value-of select="'2'"/>
			</EDI_DC40_DIRECT>
			<EDI_DC40_OUTMOD>
				<!--Please insert the transformation instruction here-->
			</EDI_DC40_OUTMOD>
			<EDI_DC40_EXPRSS>
				<!--Please insert the transformation instruction here-->
			</EDI_DC40_EXPRSS>
			<EDI_DC40_TEST>
				<xsl:choose>
					<xsl:when test="$RCVPOR != 'SAPPOE'">
						<xsl:value-of select="'X'"/>
					</xsl:when>
				</xsl:choose>			
			</EDI_DC40_TEST>
			<EDI_DC40_IDOCTYP>
				<xsl:value-of select="'SEQJIT03'"/>
			</EDI_DC40_IDOCTYP>
			<EDI_DC40_CIMTYP>
				<!--Please insert the transformation instruction here-->
			</EDI_DC40_CIMTYP>
			<EDI_DC40_MESTYP>
				<xsl:value-of select="'SEQJIT'"/>
			</EDI_DC40_MESTYP>
			<EDI_DC40_MESCOD>
				<!--Please insert the transformation instruction here-->
			</EDI_DC40_MESCOD>
			<EDI_DC40_MESFCT>
				<!--Please insert the transformation instruction here-->
			</EDI_DC40_MESFCT>
			<EDI_DC40_STD>
				<xsl:value-of select="'X'"/>
			</EDI_DC40_STD>
			<EDI_DC40_STDVRS>
				<xsl:value-of select="substring(../../../S_GS/GS_480,1,6)"/>
			</EDI_DC40_STDVRS>
			<EDI_DC40_STDMES>
				<xsl:value-of select="../../S_ST/ST_143"/>
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
				<xsl:value-of select="$gv_SNDPRN"/>
			</EDI_DC40_SNDPRN>
			<EDI_DC40_SNDSAD>
				<!--Please insert the transformation instruction here-->
			</EDI_DC40_SNDSAD>
			<EDI_DC40_SNDLAD>
				<xsl:value-of select="concat(../../../S_ISA/ISA_I05_5,'*',../../../S_ISA/ISA_I06)"/>
			</EDI_DC40_SNDLAD>
			<EDI_DC40_RCVPOR>
				<xsl:value-of select="$RCVPOR"/>
			</EDI_DC40_RCVPOR>
			<EDI_DC40_RCVPRT>
				<xsl:value-of select="$RCVPRT"/>
			</EDI_DC40_RCVPRT>
			<EDI_DC40_RCVPFC>
				<!--Please insert the transformation instruction here-->
			</EDI_DC40_RCVPFC>
			<EDI_DC40_RCVPRN>
				<xsl:value-of select="$RCVPRN"/>
			</EDI_DC40_RCVPRN>
			<EDI_DC40_RCVSAD>
				<!--Please insert the transformation instruction here-->
			</EDI_DC40_RCVSAD>
			<EDI_DC40_RCVLAD>
				<xsl:value-of select="concat(../../../S_ISA/ISA_I05_7,'*',../../../S_ISA/ISA_I07)"/>
			</EDI_DC40_RCVLAD>
			<EDI_DC40_CREDAT>
				<xsl:value-of select="$gv_docdate"/>
			</EDI_DC40_CREDAT>
			<EDI_DC40_CRETIM>
				<xsl:value-of select="$gv_doctime"/>
			</EDI_DC40_CRETIM>
			<EDI_DC40_REFINT>
				<xsl:value-of select="../../../S_ISA/ISA_I12"/>
			</EDI_DC40_REFINT>
			<EDI_DC40_REFGRP>
				<xsl:value-of select="../../../S_GS/GS_28"/>
			</EDI_DC40_REFGRP>
			<EDI_DC40_REFMES>
				<xsl:value-of select="../../S_ST/ST_329"/>
			</EDI_DC40_REFMES>
			<EDI_DC40_ARCKEY>
				<xsl:value-of select="concat('workflow-ID: ',$JOBID)"/>
			</EDI_DC40_ARCKEY>
			<EDI_DC40_SERIAL>
				<!--Please insert the transformation instruction here-->
			</EDI_DC40_SERIAL>
			<rest>
				<!--Please insert the transformation instruction here-->
			</rest>
		</EDI_DC40>
	</xsl:template>

	<!--Template for 'E2KSJCL' -->
	<xsl:template name="E2KSJCL">
		<E2KSJCL>
			<E2KSJCL_SEGNAM>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_SEGNAM>
			<E2KSJCL_MANDT>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_MANDT>
			<E2KSJCL_DOCNUM>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_DOCNUM>
			<E2KSJCL_SEGNUM>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_SEGNUM>
			<E2KSJCL_PSGNUM>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_PSGNUM>
			<E2KSJCL_HLEVEL>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_HLEVEL>
			<E2KSJCL_PARTN>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_PARTN>
			<E2KSJCL_LIFNR>
				<xsl:choose>
					<xsl:when test="../../G_N1_1_3200/S_N1_1_3200[N1_1_3200_98_1 = 'SU']/N1_1_3200_67 != ''">
						<xsl:value-of select="../../G_N1_1_3200/S_N1_1_3200[N1_1_3200_98_1 = 'SU']/N1_1_3200_67"/>
					</xsl:when>
					<xsl:when test="../../../S_GS/GS_124 != ''">
						<xsl:value-of select="../../../S_GS/GS_124 != ''"/>
					</xsl:when>
					<xsl:when test="../../../S_ISA/ISA_I07 != ''">
						<xsl:value-of select="../../../S_ISA/ISA_I07"/>
					</xsl:when>
					<xsl:otherwise></xsl:otherwise>
				</xsl:choose>
			</E2KSJCL_LIFNR>
			<E2KSJCL_KNREF>
				<xsl:value-of select="../../G_N1_1_3200/S_N1_1_3200[N1_1_3200_98_1 = 'ST']/N1_1_3200_67"/>
			</E2KSJCL_KNREF>
			<E2KSJCL_PRODN>
				<xsl:value-of select="../../S_BEG/BEG_324"/>
			</E2KSJCL_PRODN>
			<E2KSJCL_SEQNR>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_SEQNR>
			<E2KSJCL_VETYP>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_VETYP>
			<E2KSJCL_VEHID>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_VEHID>
			<E2KSJCL_SSPEZ>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_SSPEZ>
			<E2KSJCL_ABLAD>
				<xsl:value-of select="../../G_N1_1_3200/S_N1_1_3200[N1_1_3200_98_1 = 'ST']/N1_1_3200_67"/>
			</E2KSJCL_ABLAD>
			<E2KSJCL_FLDPO>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_FLDPO>
			<E2KSJCL_EDATUM>
				<xsl:choose>
					<xsl:when test="../../S_BEG/BEG_323 != ''">
						<xsl:value-of select="concat('20', ../../S_BEG/BEG_323)"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$gv_docdate"/>
					</xsl:otherwise>
				</xsl:choose>
			</E2KSJCL_EDATUM>
			<E2KSJCL_EZEIT>
				<xsl:value-of select="$gv_doctime"/>
			</E2KSJCL_EZEIT>
			<E2KSJCL_EXSTI>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_EXSTI>
			<E2KSJCL_TRMNEW>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_TRMNEW>
			<E2KSJCL_TRMOLD>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_TRMOLD>
			<E2KSJCL_TRMDAY>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_TRMDAY>
			<E2KSJCL_TRMTIM>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_TRMTIM>
			<E2KSJCL_CHNGSEQ>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_CHNGSEQ>
			<E2KSJCL_REFNR>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_REFNR>
			<E2KSJCL_FZID>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_FZID>
			<E2KSJCL_PDATUM>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_PDATUM>
			<E2KSJCL_PZEIT>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_PZEIT>
			<E2KSJCL_ABTYP>
				<xsl:value-of select="'D'"/>
			</E2KSJCL_ABTYP>
			<E2KSJCL_RDATUM>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_RDATUM>
			<E2KSJCL_RZEIT>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_RZEIT>
			<E2KSJCL_RTY01>
				<xsl:value-of select="'CP'"/>
			</E2KSJCL_RTY01>
			<E2KSJCL_RFN01>
				<xsl:value-of select="../../G_N1_1_3200/S_N1_1_3200[N1_1_3200_98_1 = 'ST']/N1_1_3200_67"/>
			</E2KSJCL_RFN01>
			<E2KSJCL_RTY02>
				<xsl:value-of select="'ZG'"/>
			</E2KSJCL_RTY02>
			<E2KSJCL_RFN02>
				<xsl:value-of select="../../../S_GS/GS_142"/>
			</E2KSJCL_RFN02>
			<E2KSJCL_RTY03>
				<xsl:value-of select="'ZF'"/>
			</E2KSJCL_RTY03>
			<E2KSJCL_RFN03>
				<xsl:value-of select="../../../S_ISA/ISA_I07"/>
			</E2KSJCL_RFN03>
			<E2KSJCL_PRODN_TO>
				<!--Please insert the transformation instruction here-->
			</E2KSJCL_PRODN_TO>
			<rest>
				<!--Please insert the transformation instruction here-->
			</rest>
		</E2KSJCL>
	</xsl:template>

	<!--Template for 'E2EDKR1' -->
	<xsl:template name="E2EDKR1">
		<E2EDKR1>
			<E2EDKR1_SEGNAM>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_SEGNAM>
			<E2EDKR1_MANDT>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_MANDT>
			<E2EDKR1_DOCNUM>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_DOCNUM>
			<E2EDKR1_SEGNUM>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_SEGNUM>
			<E2EDKR1_PSGNUM>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_PSGNUM>
			<E2EDKR1_HLEVEL>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_HLEVEL>
			<E2EDKR1_RTY01>
				<xsl:if test="../../G_N1_1_3200/S_N1_1_3200/N1_1_3200_98_1 = 'ST'">
					<xsl:value-of select="'Y1'"/>
				</xsl:if>
			</E2EDKR1_RTY01>
			<E2EDKR1_RFN01>
				<xsl:value-of select="../../G_N1_1_3200/S_N1_1_3200[N1_1_3200_98_1 = 'ST']/N1_1_3200_67"/>
			</E2EDKR1_RFN01>
			<E2EDKR1_RTY02>
				<xsl:if test="../../G_N1_1_3200/S_N1_1_3200/N1_1_3200_98_1 = 'ST'">
					<xsl:value-of select="'Y2'"/>
				</xsl:if>
			</E2EDKR1_RTY02>
			<E2EDKR1_RFN02>
				<xsl:value-of select="../../G_N1_1_3200/S_N1_1_3200[N1_1_3200_98_1 = 'ST']/N1_1_3200_67"/>
			</E2EDKR1_RFN02>
			<E2EDKR1_RTY03>
				<xsl:if test="../../G_N1_1_3200/S_N1_1_3200/N1_1_3200_98_1 = 'BY'">
					<xsl:value-of select="'Z3'"/>
				</xsl:if>				
			</E2EDKR1_RTY03>
			<E2EDKR1_RFN03>
				<xsl:value-of select="../../G_N1_1_3200/S_N1_1_3200[N1_1_3200_98_1 = 'BY']/N1_1_3200_67"/>
			</E2EDKR1_RFN03>
			<E2EDKR1_RTY04>
				<xsl:if test="../../G_N1_1_3200/S_N1_1_3200/N1_1_3200_98_1 = 'SU'">
					<xsl:value-of select="'Z4'"/>
				</xsl:if>
			</E2EDKR1_RTY04>
			<E2EDKR1_RFN04>
				<xsl:value-of select="../../G_N1_1_3200/S_N1_1_3200[N1_1_3200_98_1 = 'SU']/N1_1_3200_67"/>
			</E2EDKR1_RFN04>
			<E2EDKR1_RTY05>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RTY05>
			<E2EDKR1_RFN05>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RFN05>
			<E2EDKR1_RTY06>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RTY06>
			<E2EDKR1_RFN06>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RFN06>
			<E2EDKR1_RTY07>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RTY07>
			<E2EDKR1_RFN07>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RFN07>
			<E2EDKR1_RTY08>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RTY08>
			<E2EDKR1_RFN08>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RFN08>
			<E2EDKR1_RTY09>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RTY09>
			<E2EDKR1_RFN09>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RFN09>
			<E2EDKR1_RTY10>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RTY10>
			<E2EDKR1_RFN10>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RFN10>
			<E2EDKR1_RTY11>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RTY11>
			<E2EDKR1_RFN11>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RFN11>
			<E2EDKR1_RTY12>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RTY12>
			<E2EDKR1_RFN12>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RFN12>
			<E2EDKR1_RTY13>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RTY13>
			<E2EDKR1_RFN13>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RFN13>
			<E2EDKR1_RTY14>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RTY14>
			<E2EDKR1_RFN14>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RFN14>
			<E2EDKR1_RTY15>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RTY15>
			<E2EDKR1_RFN15>
				<!--Please insert the transformation instruction here-->
			</E2EDKR1_RFN15>
			<rest>
				<!--Please insert the transformation instruction here-->
			</rest>
		</E2EDKR1>
	</xsl:template>

	<!--Template for 'E2PSJCL' -->
	<xsl:template name="E2PSJCL">
		<E2PSJCL>
			<E2PSJCL_SEGNAM>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_SEGNAM>
			<E2PSJCL_MANDT>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_MANDT>
			<E2PSJCL_DOCNUM>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_DOCNUM>
			<E2PSJCL_SEGNUM>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_SEGNUM>
			<E2PSJCL_PSGNUM>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_PSGNUM>
			<E2PSJCL_HLEVEL>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_HLEVEL>
			<E2PSJCL_KDMAT>
				<xsl:value-of select="$gv_PO1_234_BP"/>
			</E2PSJCL_KDMAT>
			<E2PSJCL_IDNLF>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_IDNLF>
			<E2PSJCL_LIUMF>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_LIUMF>
			<E2PSJCL_ARKTX>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_ARKTX>
			<E2PSJCL_VMENG>
				<xsl:choose>
					<xsl:when test="../S_PO1/PO1_330 != ''">
						<xsl:value-of select="../S_PO1/PO1_330"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="SCH_2_6800_380"/>
					</xsl:otherwise>
				</xsl:choose>
			</E2PSJCL_VMENG>
			<E2PSJCL_VRKME>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_VRKME>
			<E2PSJCL_ABLAD>
				<xsl:value-of select="../../G_N1_1_3200/S_N1_1_3200[N1_1_3200_98_1 = 'ST']/N1_1_3200_67"/>
			</E2PSJCL_ABLAD>
			<E2PSJCL_FLDPO>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_FLDPO>
			<E2PSJCL_EDATUM>
				<xsl:if test="../../S_BEG/BEG_323 != ''">
					<xsl:value-of select="concat('20', ../../S_BEG/BEG_323)"/>
				</xsl:if>
			</E2PSJCL_EDATUM>
			<E2PSJCL_EZEIT>
				<xsl:value-of select="$gv_doctime"/>
			</E2PSJCL_EZEIT>
			<E2PSJCL_EXSTI>
				<xsl:choose>
					<xsl:when test="../../S_BEG/BEG_92 = '01'">
						<xsl:value-of select="'DEL'"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:if test="SCH_2_6800_380 > 0">
							<xsl:value-of select="'VF'"/>
						</xsl:if>
						<xsl:if test="SCH_2_6800_380 = 0">
							<xsl:value-of select="'DEL'"/>
						</xsl:if>
					</xsl:otherwise>
				</xsl:choose>
			</E2PSJCL_EXSTI>
			<E2PSJCL_CHNGLEV>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_CHNGLEV>
			<E2PSJCL_PDATUM>
				<xsl:if test="SCH_2_6800_374_5 = '010' and SCH_2_6800_373_6 != ''">
					<xsl:value-of select="concat('20', SCH_2_6800_373_6)"/>
				</xsl:if>
			</E2PSJCL_PDATUM>
			<E2PSJCL_PZEIT>
				<xsl:value-of select="'000000'"/>
			</E2PSJCL_PZEIT>
			<E2PSJCL_RDATUM>
				<xsl:if test="SCH_2_6800_374_5 = '002' and SCH_2_6800_373_6 != ''">
					<xsl:value-of select="concat('20', SCH_2_6800_373_6)"/>
				</xsl:if>
			</E2PSJCL_RDATUM>
			<E2PSJCL_RZEIT>
				<xsl:value-of select="'000000'"/>
			</E2PSJCL_RZEIT>
			<E2PSJCL_GRPIN>
				<xsl:value-of select="../../G_N1_1_3200/S_N1_1_3200[N1_1_3200_98_1 = 'BY']/N1_1_3200_67"/>
			</E2PSJCL_GRPIN>
			<E2PSJCL_GRIND>
				<xsl:value-of select="../S_PO1/PO1_350"/>
			</E2PSJCL_GRIND>
			<E2PSJCL_LIUMF_EXTERNAL>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_LIUMF_EXTERNAL>
			<E2PSJCL_LIUMF_VERSION>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_LIUMF_VERSION>
			<E2PSJCL_LIUMF_GUID>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_LIUMF_GUID>
			<E2PSJCL_KDMAT_EXTERNAL>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_KDMAT_EXTERNAL>
			<E2PSJCL_KDMAT_VERSION>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_KDMAT_VERSION>
			<E2PSJCL_KDMAT_GUID>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_KDMAT_GUID>
			<E2PSJCL_IDNLF_EXTERNAL>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_IDNLF_EXTERNAL>
			<E2PSJCL_IDNLF_VERSION>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_IDNLF_VERSION>
			<E2PSJCL_IDNLF_GUID>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_IDNLF_GUID>
			<E2PSJCL_RTY01>
				<xsl:value-of select="'ZB'"/>
			</E2PSJCL_RTY01>
			<E2PSJCL_RFN01>
				<xsl:value-of select="../../S_BEG/BEG_367"/>
			</E2PSJCL_RFN01>
			<E2PSJCL_RTY02>
				<xsl:value-of select="'UP'"/>
			</E2PSJCL_RTY02>
			<E2PSJCL_RFN02>
				<xsl:value-of select="../../G_N1_1_3200/S_N1_1_3200[N1_1_3200_98_1 = 'ST']/N1_1_3200_67"/>
			</E2PSJCL_RFN02>
			<E2PSJCL_RTY03>
				<xsl:value-of select="'JP'"/>
			</E2PSJCL_RTY03>
			<E2PSJCL_RFN03>
				<xsl:value-of select="../../S_BEG/BEG_324"/>
			</E2PSJCL_RFN03>
			<E2PSJCL_KTEXT>
				<xsl:choose>
					<xsl:when test="../../G_N1_1_3200/S_N1_1_3200[N1_1_3200_98_1 = 'SU']/N1_1_3200_67 != ''">
						<xsl:value-of select="../../G_N1_1_3200/S_N1_1_3200[N1_1_3200_98_1 = 'SU']/N1_1_3200_67"/>
					</xsl:when>
					<xsl:when test="../../../S_GS/GS_124 != ''">
						<xsl:value-of select="../../../S_GS/GS_124 != ''"/>
					</xsl:when>
					<xsl:when test="../../../S_ISA/ISA_I07 != ''">
						<xsl:value-of select="../../../S_ISA/ISA_I07"/>
					</xsl:when>
					<xsl:otherwise></xsl:otherwise>
				</xsl:choose>
			</E2PSJCL_KTEXT>
			<E2PSJCL_JCPOS>
				<xsl:value-of select="../S_PO1/PO1_350"/>
			</E2PSJCL_JCPOS>
			<E2PSJCL_CHANGETYPE>
				<!--Please insert the transformation instruction here-->
			</E2PSJCL_CHANGETYPE>
			<rest>
				<!--Please insert the transformation instruction here-->
			</rest>
		</E2PSJCL>
	</xsl:template>

	<!--Template for 'E2EDPR1' -->
	<xsl:template name="E2EDPR1">
		<E2EDPR1>
			<E2EDPR1_SEGNAM>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_SEGNAM>
			<E2EDPR1_MANDT>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_MANDT>
			<E2EDPR1_DOCNUM>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_DOCNUM>
			<E2EDPR1_SEGNUM>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_SEGNUM>
			<E2EDPR1_PSGNUM>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_PSGNUM>
			<E2EDPR1_HLEVEL>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_HLEVEL>
			<E2EDPR1_RTY01>
				<xsl:value-of select="'Z1'"/>
			</E2EDPR1_RTY01>
			<E2EDPR1_RFN01>
				<xsl:value-of select="../../S_BEG/BEG_324"/>
			</E2EDPR1_RFN01>
			<E2EDPR1_RTY02>
				<xsl:value-of select="'ZJ'"/>
			</E2EDPR1_RTY02>
			<E2EDPR1_RFN02>
				<xsl:choose>
					<xsl:when test="../../S_BEG/BEG_323 != ''">
						<xsl:value-of select="concat('20', ../../S_BEG/BEG_323)"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$gv_docdate"/>
					</xsl:otherwise>
				</xsl:choose>
			</E2EDPR1_RFN02>
			<E2EDPR1_RTY03>
				<xsl:value-of select="'ZT'"/>
			</E2EDPR1_RTY03>
			<E2EDPR1_RFN03>
				<xsl:value-of select="../../S_BEG/BEG_324"/>
			</E2EDPR1_RFN03>
			<E2EDPR1_RTY04>
				<xsl:value-of select="'ZU'"/>
			</E2EDPR1_RTY04>
			<E2EDPR1_RFN04>
				<xsl:value-of select="../S_PO1/PO1_350"/>
			</E2EDPR1_RFN04>
			<E2EDPR1_RTY05>
				<xsl:if test="../../S_BEG/BEG_328 != ''">
					<xsl:value-of select="'ZV'"/>
				</xsl:if>
			</E2EDPR1_RTY05>
			<E2EDPR1_RFN05>
				<xsl:value-of select="../../S_BEG/BEG_328"/>
			</E2EDPR1_RFN05>
			<E2EDPR1_RTY06>
				<xsl:value-of select="'ZI'"/>
			</E2EDPR1_RTY06>
			<E2EDPR1_RFN06>
				<xsl:value-of select="../../S_BEG/BEG_92"/>
			</E2EDPR1_RFN06>
			<E2EDPR1_RTY07>
				<xsl:value-of select="'ZM'"/>
			</E2EDPR1_RTY07>
			<E2EDPR1_RFN07>
				<xsl:choose>
					<xsl:when test="../S_PO1/PO1_355 != ''">
						<xsl:value-of select="../S_PO1/PO1_355"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="SCH_2_6800_355"/>
					</xsl:otherwise>
				</xsl:choose>
			</E2EDPR1_RFN07>
			<E2EDPR1_RTY08>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_RTY08>
			<E2EDPR1_RFN08>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_RFN08>
			<E2EDPR1_RTY09>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_RTY09>
			<E2EDPR1_RFN09>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_RFN09>
			<E2EDPR1_RTY10>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_RTY10>
			<E2EDPR1_RFN10>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_RFN10>
			<E2EDPR1_RTY11>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_RTY11>
			<E2EDPR1_RFN11>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_RFN11>
			<E2EDPR1_RTY12>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_RTY12>
			<E2EDPR1_RFN12>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_RFN12>
			<E2EDPR1_RTY13>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_RTY13>
			<E2EDPR1_RFN13>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_RFN13>
			<E2EDPR1_RTY14>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_RTY14>
			<E2EDPR1_RFN14>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_RFN14>
			<E2EDPR1_RTY15>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_RTY15>
			<E2EDPR1_RFN15>
				<!--Please insert the transformation instruction here-->
			</E2EDPR1_RFN15>
			<rest>
				<!--Please insert the transformation instruction here-->
			</rest>
		</E2EDPR1>
	</xsl:template>

	<!--Template for 'E2EDPT3' -->
	<xsl:template name="E2EDPT3">
		<E2EDPT3>
			<E2EDPT3_SEGNAM>
				<!--Please insert the transformation instruction here-->
			</E2EDPT3_SEGNAM>
			<E2EDPT3_MANDT>
				<!--Please insert the transformation instruction here-->
			</E2EDPT3_MANDT>
			<E2EDPT3_DOCNUM>
				<!--Please insert the transformation instruction here-->
			</E2EDPT3_DOCNUM>
			<E2EDPT3_SEGNUM>
				<!--Please insert the transformation instruction here-->
			</E2EDPT3_SEGNUM>
			<E2EDPT3_PSGNUM>
				<!--Please insert the transformation instruction here-->
			</E2EDPT3_PSGNUM>
			<E2EDPT3_HLEVEL>
				<!--Please insert the transformation instruction here-->
			</E2EDPT3_HLEVEL>
			<E2EDPT3_TDNAME>
				<xsl:value-of select="'YADT'"/>
			</E2EDPT3_TDNAME>
			<E2EDPT3_SPRAS>
				<xsl:value-of select="'EN'"/>
			</E2EDPT3_SPRAS>
			<E2EDPT3_TXTLF>
				<xsl:value-of select="'01'"/>
			</E2EDPT3_TXTLF>
			<E2EDPT3_TXT01>
				<xsl:value-of select="'1200'"/>
			</E2EDPT3_TXT01>
			<E2EDPT3_TXT02>
				<xsl:value-of select="$gv_PO1_234_PD"/>
			</E2EDPT3_TXT02>
			<E2EDPT3_TXT03>
				<xsl:if test="../../S_PER_1_600/PER_1_600_366 = 'BD'">
					<xsl:value-of select="'1410'"/>
				</xsl:if>
			</E2EDPT3_TXT03>
			<E2EDPT3_TXT04>
				<xsl:value-of select="../../S_PER_1_600[PER_1_600_366 = 'BD']/PER_1_600_93"/>
			</E2EDPT3_TXT04>
			<E2EDPT3_TXT05>
				<xsl:if test="../../S_PER_1_600/PER_1_600_366 = 'OC'">
					<xsl:value-of select="'1420'"/>
				</xsl:if>
			</E2EDPT3_TXT05>
			<E2EDPT3_TXT06>
				<xsl:value-of select="../../S_PER_1_600[PER_1_600_366 = 'OC']/PER_1_600_93"/>
			</E2EDPT3_TXT06>
			<E2EDPT3_TXT07>
				<xsl:if test="../../S_PER_1_600/PER_1_600_366 = 'DC'">
					<xsl:value-of select="'1430'"/>
				</xsl:if>
			</E2EDPT3_TXT07>
			<E2EDPT3_TXT08>
				<xsl:value-of select="../../S_PER_1_600[PER_1_600_366 = 'DC']/PER_1_600_93"/>
			</E2EDPT3_TXT08>
			<E2EDPT3_TXT09>
				<xsl:value-of select="'T1PC'"/>
			</E2EDPT3_TXT09>
			<E2EDPT3_TXT10>
				<xsl:value-of select="../../G_N1_1_3200/S_N1_1_3200[N1_1_3200_98_1 = 'ST']/concat('SHIP-TO','*', N1_1_3200_67,'*', N1_1_3200_93)"/>
			</E2EDPT3_TXT10>
			<E2EDPT3_TXT11>
				<xsl:value-of select="'T1SH'"/>
			</E2EDPT3_TXT11>
			<E2EDPT3_TXT12>
				<xsl:value-of select="../../G_N1_1_3200[S_N1_1_3200/N1_1_3200_98_1 = 'ST']/S_N4_1_3500/concat('SHIP-TO','*', ../S_N3_1_3400/N3_1_3400_166_1,'*',N4_1_3500_19,'*',N4_1_3500_156,'*',N4_1_3500_116,'*',N4_1_3500_26)"/>
			</E2EDPT3_TXT12>
			<E2EDPT3_TXT13>
				<!--Please insert the transformation instruction here-->
			</E2EDPT3_TXT13>
			<E2EDPT3_TXT14>
				<!--Please insert the transformation instruction here-->
			</E2EDPT3_TXT14>
			<E2EDPT3_TSSPRAS_ISO>
				<!--Please insert the transformation instruction here-->
			</E2EDPT3_TSSPRAS_ISO>
			<rest>
				<!--Please insert the transformation instruction here-->
			</rest>
		</E2EDPT3>
	</xsl:template>
</xsl:stylesheet>