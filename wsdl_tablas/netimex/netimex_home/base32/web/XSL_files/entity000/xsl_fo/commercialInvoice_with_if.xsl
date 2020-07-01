<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:variable name="fo:layout-master-set">
		<fo:layout-master-set>
			<fo:simple-page-master master-name="default-page-master" page-height="14in" page-width="8.5in" margin-top="0.79in" margin-bottom="0.79in" margin-left="0.6in" margin-right="0.6in">
				<fo:region-before margin-right="0.6in" extent="0cm"/>
				<fo:region-body margin-top="0cm" margin-bottom="0cm" font-family="Helvetica,Times,Courier" font-size="14pt" line-height="16pt"/>
				<fo:region-after extent="0cm"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
	</xsl:variable>
	<xsl:template match="/">
		<fo:root>
			<xsl:copy-of select="$fo:layout-master-set"/>
			<fo:page-sequence master-reference="default-page-master">
				<fo:static-content flow-name="xsl-region-before">
					<fo:block/>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<fo:block/>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:for-each select="DocumentRoot">
							<fo:table width="100%" table-layout="fixed" space-before.optimum="4pt" space-after.optimum="4pt">
								<fo:table-column/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
											<fo:block>
												<fo:block>
													<xsl:text>&#xA;</xsl:text>
												</fo:block>
												<fo:table width="100%" table-layout="fixed" space-before.optimum="4pt" space-after.optimum="4pt">
													<fo:table-column/>
													<fo:table-column/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
																<fo:block>
																	<fo:table width="50%" table-layout="fixed" space-before.optimum="4pt" space-after.optimum="4pt">
																		<fo:table-column/>
																		<fo:table-column/>
																		<fo:table-body>
																			<fo:table-row>
																				<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
																					<fo:block>
																						<xsl:for-each select="Internals">
																							<xsl:for-each select="logo_img_src">
																								<fo:external-graphic space-before.optimum="4pt" space-after.optimum="4pt">
																									<xsl:attribute name="src">url('<xsl:value-of select="." />')</xsl:attribute>
																								</fo:external-graphic>
																							</xsl:for-each>
																						</xsl:for-each>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
																					<fo:block>
																						<xsl:for-each select="Internals">
																							<xsl:if test="position()=1">
																								<fo:table table-layout="fixed" width="100%" space-before.optimum="4pt" space-after.optimum="4pt">
																									<xsl:for-each select="../Internals">
																										<fo:table-column/>
																									</xsl:for-each>
																									<fo:table-body>
																										<fo:table-row>
																											<xsl:for-each select="../Internals">
																												<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
																													<fo:block>
																														<xsl:for-each select="customer_name">
																															<fo:inline font-weight="bold">
																																<xsl:apply-templates/>
																															</fo:inline>
																														</xsl:for-each>
																													</fo:block>
																												</fo:table-cell>
																											</xsl:for-each>
																										</fo:table-row>
																										<fo:table-row>
																											<xsl:for-each select="../Internals">
																												<fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
																													<fo:block>
																														<xsl:for-each select="street">
																															<xsl:apply-templates/>
																														</xsl:for-each>
																													</fo:block>
																												</fo:table-cell>
																											</xsl:for-each>
																										</fo:table-row>
																										<fo:table-row>
																											<xsl:for-each select="../Internals">
																												<fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
																													<fo:block>
																														<xsl:for-each select="city">
																															<xsl:apply-templates/>
																														</xsl:for-each>
																													</fo:block>
																												</fo:table-cell>
																											</xsl:for-each>
																										</fo:table-row>
																										<fo:table-row>
																											<xsl:for-each select="../Internals">
																												<fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
																													<fo:block>
																														<xsl:for-each select="country">
																															<xsl:apply-templates/>
																														</xsl:for-each>
																													</fo:block>
																												</fo:table-cell>
																											</xsl:for-each>
																										</fo:table-row>
																									</fo:table-body>
																								</fo:table>
																							</xsl:if>
																						</xsl:for-each>
																					</fo:block>
																				</fo:table-cell>
																			</fo:table-row>
																		</fo:table-body>
																	</fo:table>
																	<fo:block>
																		<fo:leader leader-pattern="space"/>
																	</fo:block>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
																<fo:block>
																	<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
																		<fo:block font-size="inherited-property-value(&apos;font-size&apos;) + 4pt" text-align="center">
																			<fo:inline font-size="16" font-style="italic" font-weight="bold">Commercial Invoice</fo:inline>
																		</fo:block>
																	</fo:block>
																	<fo:table width="100%" table-layout="fixed" space-before.optimum="4pt" space-after.optimum="4pt">
																		<fo:table-column/>
																		<fo:table-body>
																			<fo:table-row>
																				<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																					<fo:block>
																						<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
																							<fo:block>
																								<fo:inline font-weight="bold">Invoice Number / Date</fo:inline>
																							</fo:block>
																						</fo:block>
																						<xsl:for-each select="DocInfo">
																							<xsl:for-each select="References">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</xsl:for-each> / <xsl:for-each select="GeneralInformation">
																							<xsl:for-each select="DateDetails">
																								<xsl:for-each select="dateValue">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:for-each>
																						</xsl:for-each>
																					</fo:block>
																				</fo:table-cell>
																			</fo:table-row>
																			<fo:table-row>
																				<fo:table-cell text-align="center" background-color="#BFBFBF" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																					<fo:block>
																						<fo:inline font-weight="bold">Original</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																			</fo:table-row>
																			<fo:table-row>
																				<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																					<fo:block>
																						<fo:inline font-weight="bold">Packing List Number:</fo:inline>
																						<fo:block>
																							<fo:leader leader-pattern="space"/>
																						</fo:block>
																						<xsl:for-each select="DocInfo">
																							<xsl:for-each select="References">
																								<xsl:for-each select="referenceValue">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:for-each>
																						</xsl:for-each>
																					</fo:block>
																				</fo:table-cell>
																			</fo:table-row>
																			<fo:table-row>
																				<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																					<fo:block>
																						<xsl:for-each select="Internals">
																							<xsl:for-each select="deal_no">
																								<fo:inline font-weight="bold">L/C Number:</fo:inline>
																								<fo:block>
																									<fo:leader leader-pattern="space"/>
																								</fo:block>
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</xsl:for-each>
																					</fo:block>
																				</fo:table-cell>
																			</fo:table-row>
																		</fo:table-body>
																	</fo:table>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
																<fo:block>
																	<fo:table width="100%" table-layout="fixed" space-before.optimum="4pt" space-after.optimum="4pt">
																		<fo:table-column/>
																		<fo:table-column/>
																		<fo:table-body>
																			<fo:table-row>
																				<fo:table-cell number-rows-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																					<fo:block>
																						<fo:inline font-weight="bold">Buyer / Importer</fo:inline>
																						<fo:block>
																							<fo:leader leader-pattern="space"/>
																						</fo:block>
																						<xsl:for-each select="Party">
																						<xsl:if test="contains(partyQualifier/text(),'DDD')">

																							<fo:block>
																								<fo:leader leader-pattern="space"/>
																							</fo:block>
																							<xsl:for-each select="organizationName">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																							<fo:block>
																								<fo:leader leader-pattern="space"/>
																							</fo:block>
																							<xsl:for-each select="AddressInformation">
																								<xsl:apply-templates/>
																							</xsl:for-each>	
																						</xsl:if>
																						</xsl:for-each>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																					<fo:block>
																						<fo:inline font-weight="bold">Your Order Number</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																			</fo:table-row>
																			<fo:table-row>
																				<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																					<fo:block>
																						<fo:inline font-weight="bold">Our Order Number</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																			</fo:table-row>
																			<fo:table-row>
																				<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																					<fo:block>
																						<fo:inline font-weight="bold">Payment Terms</fo:inline>
																						<fo:block>
																							<fo:leader leader-pattern="space"/>
																						</fo:block>
																						<xsl:for-each select="PaymentTerms">
																							<xsl:for-each select="PaymentTermsDetail">
																								<xsl:for-each select="UserDefinedPaymentTerms">
																									<xsl:for-each select="line">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</xsl:for-each>
																							</xsl:for-each>
																						</xsl:for-each>
																					</fo:block>
																				</fo:table-cell>
																			</fo:table-row>
																		</fo:table-body>
																	</fo:table>
																	<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
																		<fo:block text-align="right">
																			<xsl:for-each select="RoutingSummary">
																				<fo:table width="100%" table-layout="fixed" space-before.optimum="4pt" space-after.optimum="4pt">
																					<fo:table-column/>
																					<fo:table-column/>
																					<fo:table-column/>
																					<fo:table-body>
																						<fo:table-row>
																							<fo:table-cell text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																								<fo:block>
																									<fo:inline font-weight="bold">Registration Number</fo:inline>
																								</fo:block>
																							</fo:table-cell>
																							<fo:table-cell text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																								<fo:block>
																									<fo:inline font-weight="bold">AWB/BL Number</fo:inline>
																									<fo:block>
																										<fo:leader leader-pattern="space"/>
																									</fo:block>
																									<xsl:for-each select="transportService">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</fo:block>
																							</fo:table-cell>
																							<fo:table-cell text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																								<fo:block>
																									<fo:inline font-weight="bold">Shipment Date</fo:inline>
																									<fo:block>
																										<fo:leader leader-pattern="space"/>
																									</fo:block>
																									<xsl:for-each select="DateDetails">
																										<xsl:for-each select="dateValue">
																											<xsl:apply-templates/>
																										</xsl:for-each>
																									</xsl:for-each>
																									<fo:block>
																										<fo:leader leader-pattern="space"/>
																									</fo:block>
																								</fo:block>
																							</fo:table-cell>
																						</fo:table-row>
																						<fo:table-row>
																							<fo:table-cell text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																								<fo:block>
																									<fo:inline font-weight="bold">Vessel Name</fo:inline>
																								</fo:block>
																							</fo:table-cell>
																							<fo:table-cell text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																								<fo:block>
																									<fo:inline font-weight="bold">Voyage Number</fo:inline>
																								</fo:block>
																							</fo:table-cell>
																							<fo:table-cell text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																								<fo:block>
																									<fo:inline font-weight="bold">Flight Number</fo:inline>
																								</fo:block>
																							</fo:table-cell>
																						</fo:table-row>
																						<fo:table-row>
																							<fo:table-cell text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																								<fo:block>
																									<fo:inline font-weight="bold">Port Of Loading</fo:inline>
																									<fo:block>
																										<fo:leader leader-pattern="space"/>
																									</fo:block>
																									<xsl:for-each select="Location">
																										<xsl:for-each select="LocationCodeOrName">
																											<xsl:for-each select="locationCode">
																												<xsl:apply-templates/>
																											</xsl:for-each>
																										</xsl:for-each>
																									</xsl:for-each>
																								</fo:block>
																							</fo:table-cell>
																							<fo:table-cell text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																								<fo:block>
																									<fo:inline font-weight="bold">Port Of Discharge</fo:inline>
																									<fo:block>
																										<fo:leader leader-pattern="space"/>
																									</fo:block>
																									<xsl:for-each select="Location">
																										<xsl:for-each select="LocationCodeOrName">
																											<xsl:for-each select="locationCode">
																												<xsl:apply-templates/>
																											</xsl:for-each>
																										</xsl:for-each>
																									</xsl:for-each>
																								</fo:block>
																							</fo:table-cell>
																							<fo:table-cell text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																								<fo:block>
																									<fo:inline font-weight="bold">Final Destination</fo:inline>
																								</fo:block>
																							</fo:table-cell>
																						</fo:table-row>
																						<fo:table-row>
																							<fo:table-cell text-align="left" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																								<fo:block>
																									<fo:inline font-weight="bold">Description Of Goods</fo:inline>
																									<fo:block>
																										<fo:leader leader-pattern="space"/>
																									</fo:block>
																									<xsl:for-each select="/">
																										<xsl:for-each select="CommercialInvoice">
																											<xsl:for-each select="Goods">
																												<xsl:for-each select="goodsDescription">
																													<xsl:apply-templates/>
																												</xsl:for-each>
																											</xsl:for-each>
																										</xsl:for-each>
																									</xsl:for-each>
																									<fo:block>
																										<fo:leader leader-pattern="space"/>
																									</fo:block>
																								</fo:block>
																							</fo:table-cell>
																						</fo:table-row>
																						<fo:table-row>
																							<fo:table-cell text-align="left" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																								<fo:block>
																									<fo:inline font-weight="bold">Marks</fo:inline>
																								</fo:block>
																							</fo:table-cell>
																						</fo:table-row>
																						<fo:table-row>
																							<fo:table-cell text-align="left" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																								<fo:block>
																									<fo:inline font-weight="bold">Packing Mode</fo:inline>
																								</fo:block>
																							</fo:table-cell>
																						</fo:table-row>
																					</fo:table-body>
																				</fo:table>
																			</xsl:for-each>
																			<fo:block>
																				<xsl:text>&#xA;</xsl:text>
																			</fo:block>
																			<fo:table width="100%" table-layout="fixed" space-before.optimum="4pt" space-after.optimum="4pt">
																				<fo:table-column/>
																				<fo:table-column/>
																				<fo:table-column/>
																				<fo:table-column/>
																				<fo:table-column/>
																				<fo:table-body>
																					<fo:table-row background-color="#AEAEAE">
																						<fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																							<fo:block>Container</fo:block>
																						</fo:table-cell>
																						<fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																							<fo:block>Style Description</fo:block>
																						</fo:table-cell>
																						<fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																							<fo:block>Quantity</fo:block>
																						</fo:table-cell>
																						<fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																							<fo:block>Unit Price</fo:block>
																						</fo:table-cell>
																						<fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																							<fo:block>Amount</fo:block>
																						</fo:table-cell>
																					</fo:table-row>
																					<fo:table-row>
																						<fo:table-cell number-columns-spanned="5" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																							<fo:block>
																								<xsl:for-each select="LineItemDetails">
																									<xsl:if test="position()=1">
																										<fo:table table-layout="fixed" width="100%" space-before.optimum="4pt" space-after.optimum="4pt">
																											<fo:table-column/>
																											<fo:table-column/>
																											<fo:table-column/>
																											<fo:table-column/>
																											<fo:table-column/>
																											<fo:table-body>
																												<xsl:for-each select="../LineItemDetails">
																													<fo:table-row>
																														<fo:table-cell text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
																															<fo:block>
																																<xsl:for-each select="lineItemNumber">
																																	<xsl:apply-templates/>
																																</xsl:for-each>
																															</fo:block>
																														</fo:table-cell>
																														<fo:table-cell text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
																															<fo:block>
																																<xsl:for-each select="Product">
																																	<xsl:for-each select="productName">
																																		<xsl:apply-templates/>
																																	</xsl:for-each>
																																</xsl:for-each>
																															</fo:block>
																														</fo:table-cell>
																														<fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
																															<fo:block>
																																<xsl:for-each select="LineItemQuantity">
																																	<xsl:for-each select="value">
																																		<xsl:apply-templates/>
																																	</xsl:for-each>&#160; <xsl:for-each select="unitOfMeasure">
																																		<xsl:apply-templates/>
																																	</xsl:for-each>
																																</xsl:for-each>
																															</fo:block>
																														</fo:table-cell>
																														<fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
																															<fo:block>
																																<xsl:for-each select="UnitPrice">
																																	<xsl:for-each select="value">
																																		<xsl:apply-templates/>
																																	</xsl:for-each>&#160; <xsl:for-each select="unitOfMeasure">
																																		<xsl:apply-templates/>
																																	</xsl:for-each>
																																</xsl:for-each>
																															</fo:block>
																														</fo:table-cell>
																														<fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
																															<fo:block>
																																<xsl:for-each select="LineItemTotalAmount">
																																	<xsl:for-each select="MultiCurrency">
																																		<xsl:for-each select="MonetaryAmount">
																																			<xsl:for-each select="value">
																																				<xsl:apply-templates/>
																																			</xsl:for-each>&#160; <xsl:for-each select="currencyCode">
																																				<xsl:apply-templates/>
																																			</xsl:for-each>
																																		</xsl:for-each>
																																	</xsl:for-each>
																																</xsl:for-each>
																															</fo:block>
																														</fo:table-cell>
																													</fo:table-row>
																												</xsl:for-each>
																											</fo:table-body>
																										</fo:table>
																									</xsl:if>
																								</xsl:for-each>
																							</fo:block>
																						</fo:table-cell>
																					</fo:table-row>
																					<fo:table-row>
																						<fo:table-cell text-align="right" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																							<fo:block>
																								<fo:inline font-weight="bold">Total Quantity</fo:inline>
																							</fo:block>
																						</fo:table-cell>
																						<fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																							<fo:block/>
																						</fo:table-cell>
																						<fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																							<fo:block>
																								<fo:inline font-weight="bold">Sub Total</fo:inline>
																							</fo:block>
																						</fo:table-cell>
																						<fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																							<fo:block/>
																						</fo:table-cell>
																					</fo:table-row>
																					<fo:table-row>
																						<fo:table-cell text-align="right" number-columns-spanned="4" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																							<fo:block>
																								<fo:inline font-weight="bold">Invoice Total</fo:inline>
																							</fo:block>
																						</fo:table-cell>
																						<fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																							<fo:block/>
																						</fo:table-cell>
																					</fo:table-row>
																					<fo:table-row>
																						<fo:table-cell text-align="left" number-columns-spanned="5" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																							<fo:block>
																								<fo:block>
																									<fo:leader leader-pattern="space"/>
																								</fo:block>
																								<fo:block>
																									<fo:leader leader-pattern="space"/>
																								</fo:block>
																								<fo:inline font-weight="bold">Notes:</fo:inline>
																								<fo:block>
																									<fo:leader leader-pattern="space"/>
																								</fo:block>
																								<xsl:for-each select="Internals">
																									<xsl:for-each select="deal_no">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</xsl:for-each>
																							</fo:block>
																						</fo:table-cell>
																					</fo:table-row>
																					<fo:table-row>
																						<fo:table-cell text-align="center" number-columns-spanned="5" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="black">
																							<fo:block>For and behalf of <fo:block>
																									<fo:leader leader-pattern="space"/>
																								</fo:block>
																								<xsl:for-each select="Internals">
																									<xsl:for-each select="customer_name">
																										<fo:inline font-weight="bold">
																											<xsl:apply-templates/>
																										</fo:inline>
																									</xsl:for-each>
																								</xsl:for-each>
																								<fo:block>
																									<fo:leader leader-pattern="space"/>
																								</fo:block>
																								<fo:block>
																									<fo:leader leader-pattern="space"/>
																								</fo:block>
																								<fo:block>
																									<fo:leader leader-pattern="space"/>
																								</fo:block>_________________________________________<fo:block>
																									<fo:leader leader-pattern="space"/>
																								</fo:block>Authorised Signature<fo:block>
																									<fo:leader leader-pattern="space"/>
																								</fo:block>
																								<fo:block>
																									<fo:leader leader-pattern="space"/>
																								</fo:block>
																								<fo:block>
																									<fo:leader leader-pattern="space"/>
																								</fo:block>
																								<fo:block>
																									<fo:leader leader-pattern="space"/>
																								</fo:block>
																							</fo:block>
																						</fo:table-cell>
																					</fo:table-row>
																				</fo:table-body>
																			</fo:table>
																			<fo:block>
																				<fo:leader leader-pattern="space"/>
																			</fo:block>
																			<xsl:for-each select="LineItemDetails"/>
																			<fo:block>
																				<xsl:text>&#xA;</xsl:text>
																			</fo:block>
																		</fo:block>
																	</fo:block>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</xsl:for-each>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
