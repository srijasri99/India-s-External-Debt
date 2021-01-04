library(dplyr)
library(tseries)
ed=read.csv("C:/Users/GOKUL SUSEENDRAN/Documents/R project(Ext Debt)/datasets/External Debt.csv")
ed=ts(ed,start = 1991,end = 2019,frequency = 1)
head(ed)
colnames(ed)
summary(ed)
###########plots for all variables##########


##########multilateral##########

plot.ts(ed[,"I..Total.Multilateral"],xlab="YEARS",ylab="TOTAL MULTILATTERAL",main="TOTAL MULTILATERAL",col="BLUE")
plot.ts(ed[,"Total.Government.Borrowing.Multilateral"],xlab="YEARS",ylab="TOTAL GOVERNMENT BORROWING",main="TOTAL GOVT BORROWING(MULTILATERAL)",col="BLUE")
plot.ts(ed[,"Total.Concessional.GB.Multilateral"],xlab="YEARS",ylab="TOTAL CONCESSIONAL(GB)",main="TOTAL CONCESSIONAL GOVT BORROWING(MULTILATERAL)",col="blue")
plot.ts(ed[,"a..IDA.Concessional.GB.Multilateral"],xlab="YEARS",ylab="IDA CONCESSIONAL(GB)",main="IDA CONCESSIONAL GOVT BORROWING(MULTILATERAL)",col="blue")
plot.ts(ed[,"b..Others.Concessional.GB.Multilateral"],xlab="YEARS",ylab="TOTAL NON-GOVT BORROWING",main="OTHERS CONCESSIONAL GOVT BORROWING(MULTILATERAL)",col="blue")
plot.ts(ed[,"Total.Non...Concessional.GB.Multilateral"],xlab="YEARS",ylab="TOTAL NON-CONCESSIONAL(GB)",main="TOTAL NON-CONCESSIONAL GOVT BORROWING(MULTILATERAL)",col="blue")
plot.ts(ed[,"a..IBRD.Non...Concessional.GB.Multilateral"],xlab="YEARS",ylab="IBRD NON-CONCESSIONAL(NGB)",main="IBRD NON-CONCESSIONAL GOVT BORROWING(MULTILATERAL)",col="blue")
plot.ts(ed[,"b..Others.Non...Concessional.GB.Multilateral"],xlab="YEARS",ylab="OTHERS NON-CONCESSIONAL(GB)",main="OTHERS NON-CONCESSIONAL GOVT BORROWING(MULTILATERAL)",col="blue")
plot.ts(ed[,"Total.Non.Government.Borrowing.Multilateral"],xlab="YEARS",ylab="TOTAL NON-GOVT BORROWING",main="TOTAL NON-GOVT BORROWING(MULTILATERAL) ",col="red")
plot.ts(ed[,"Concessional.NGB.Multilateral"],xlab="YEARS",ylab="CONCESSIONAL NGB",main="CONCESSIONAL NGB(MULTILATERAL)",col="red")
plot.ts(ed[,"Total.Non...Concessional.NGB.Multilateral"],xlab="YEARS",ylab="TOTAL NON-CONCESSIONAL NGB",main="TOTAL NON-CONCESSIONAL NGB(MULTILATERAL)",col="red")
plot.ts(ed[,"a..Public.sector.Non...Concessional.NGB.Multilateral"],xlab="YEARS",ylab="PUBLIC SECTOR",main="PUBLIC SECTOR NON-CONCESSIONAL NGB(MULTILATERAL)",col="red")
plot.ts(ed[,"a.1..IBRD.Non...Concessional.NGB.Multilateral"],xlab="YEARS",ylab="IBRD (PUBLIC SECTOR)",main="IBRD NON-CONCESSIONAL NGB PUBLIC SECTOR (MULTILATERAL)",col="red")
plot.ts(ed[,"a.2..Others.Non...Concessional.NGB.Multilateral"],xlab="YEARS",ylab="OTHERS (PUBLIC SECTOR)",main="OTHERS NON-CONCESSIONAL NGB PUBLIC SECTOR(MULTILATERAL)",col="red")
plot.ts(ed[,"b..Financial.institutions.Non...Concessional.NGB.Multilateral"],xlab="YEARS",ylab="FINANCIAL INSTITUTIONS",main="FINANCIAL INSTITUTIONS NON-CONCESSIONAL NGB(MULTILATERAL)",col="red")
plot.ts(ed[,"b.1..IBRD.Non...Concessional.NGB.Multilateral"],xlab="YEARS",ylab="IBRD (FINANCIAL INSTITUTIONS)",main="IBRD NON-CONCESSIONAL NGB FINANCIAL INSTITUTIONS(MULTILATERAL)",col="red")
plot.ts(ed[,"b.2..Others.Non...Concessional.NGB.Multilateral"],xlab="YEARS",ylab="OTHERS (FINANCIAL INSTITUTIONS)",main="OTHERS NON-CONCESSIONAL NGB FINANCIAL INSTITUTIONS(MULTILATERAL)",col="red")
plot.ts(ed[,"c..Private.sector.Non...Concessional.NGB.Multilateral"],xlab="YEARS",ylab=" PRIVATE SECTOR",main="PRIVATE SECTOR NON-CONCESSIONAL NGB(MULTILATERAL)",col="red")
plot.ts(ed[,"c.1..IBRD.Non...Concessional.NGB.Multilateral"],xlab="YEARS",ylab="IBRD (PRIVATE SECTOR)",main="IBRD NON-CONCESSIONAL NGB PRIVATE SECTOR (MULTILATERAL)",col="red")
plot.ts(ed[,"c.2..Others.Non...Concessional.NGB.Multilateral"],xlab="YEARS",ylab="OTHERS (PRIVATE SECTOR)",main="OTHERS NON-CONCESSIONAL NGB PRIVATE SECTOR (MULTILATERAL)",col="red")

###########bilateral########
plot.ts(ed[,"II.Total.Bilateral"],xlab="YEARS",ylab="TOTAL BILATERAL",main="TOTAL BILATERAL(BILATERAL)",col="BLUE")


plot.ts(ed[,"Total.Government.Borrowing.Bilateral"],xlab="YEARS",ylab="TOTAL GOVERNMENT BORROWING",main="TOTAL GOVT BORROWING(BILATERAL)",col="BLUE")
plot.ts(ed[,"Concessional.GB.Bilateral"],xlab="YEARS",ylab="CONCESSIONAL(GOVT BORROWING)",main="CONCESSIONAL GOVT BORROWING(BILTERAL)",col="blue")
plot.ts(ed[,"Non...Concessional.GB.Bilateral"],xlab="YEARS",ylab="NON-CONCESSIONAL(GOVT BORROWING)",main="NON-CONCESSIONAL GOVT BORROWING(BILATERAL)",col="blue")



plot.ts(ed[,"Total.Non.Government.Borrowing.Bilateral"],xlab="YEARS",ylab="TOTAL NON-GOVT BORROWING",main="TOTAL NON-GOVT BORROWING(BILATERAL)",col="red")
plot.ts(ed[,"Total.Concessinal.NGB.Bilateral"],xlab="YEARS",ylab="TOTAL CONCESSIONAL(NGB)",main="TOTAL CONCESSIONAL NGB(BILATERAL)",col="red")
plot.ts(ed[,"Total..Non...Concessional.NGB.Bilateral"],xlab="YEARS",ylab="NON-CONCESSIONAL(NGB)",main="TOTAL NON-CONCESSIONAL NON GOVT BORROWING(BILATERAL)",col="red")

plot.ts(ed[,"a..Public.sector.Concessional.NGB.Bilateral"],xlab="YEARS",ylab="CONCESSIONAL(NGB)",main="PUBLIC SECTOR CONCESSIONAL NGB(BILATERAL)",col="red")
plot.ts(ed[,"b..Financial.institutions.concessional.NGB.Bilateral"],xlab="YEARS",ylab="CONCESSIONAL(NGB)",main="FINANCIAL INSTITUTIONS CONCESSIONAL NGB(BILATERAL)",col="red")
plot.ts(ed[,"c..Private.sector.concessional.NGB.Bilateral"],xlab="YEARS",ylab="CONCESSIONAL(NGB)",main="PRIVATE SECTOR CONCESSIONAL NGB(BILATERAL)",col="red")

plot.ts(ed[,"a..Public.sector.Non...Concessional.NGB.Bilateral"],xlab="YEARS",ylab="NON-CONCESSIONAL(NGB)",main="PUBLIC SECTOR NON-CONCESSIONAL NGB(BILATERAL)",col="red")
plot.ts(ed[,"b..Financial.institutions.Non...Concessional.NGB.Bilateral"],xlab="YEARS",ylab="NON-CONCESSIONAL(NGB)",main="FINANCIAL INSTITUTIONS NON-CONCESSIONAL NGB(BILATERAL)",col="red")
plot.ts(ed[,"c..Private.sector.Non...Concessional.NGB.Bilateral"],xlab="YEARS",ylab="NON-CONCESSIONAL(NGB)",main="PRIVATE SECTOR NON-CONCESSIONAL NGB(BILATERAL)",col="red")

##########imf to total CB######
plot.ts(ed[,"III..International.Monetary.Fund"],xlab="YEARS",ylab="INTERNATIONAL MONETARY FUND",main="INTERNATIONAL MONETARY FUND",col="violetred")
plot.ts(ed[,"IV.Total.Trade.Credit"],xlab="YEARS",ylab="TOTAL TRADE CREDIT",main="TOTAL TRADE CREDIT",col="violetred")
plot.ts(ed[,"a..Buyers.credit.TC"],xlab="YEARS",ylab="BUYERS CREDIT",main="BUYERS CREDIT(TRADE CREDIT)",col="violetred")
plot.ts(ed[,"b..Suppliers.credit.TC"],xlab="YEARS",ylab="SUPPLIERS CREDIT",main="SUPPLIERS CREDIT(TOTAL CREDIT)",col="violetred")
plot.ts(ed[,"c..Export.credit.component.of.bilateral.credit.TC"],xlab="YEARS",ylab="EXPORT CREDIT COMPONENT OF BILATERAL",main="EXPORT CREDIT COMPONENT OF BILATERAL CREDIT",col="violetred")
plot.ts(ed[,"d..Export.credit.for.defence.purposes.TC"],xlab="YEARS",ylab="EXPORT CREDIT(DEFENCE)",main="EXPORT CREDIT FOR DEFENCE",col="violetred")
plot.ts(ed[,"V.Total.Commercial.Borrowing"],xlab="YEARS",ylab="TOTAL COMMERCIAL BORROWING",main="TOTAL COMMERCIAL BORROWING",col="violetred")
plot.ts(ed[,"a..Commercial.bank.loans.CB"],xlab="YEARS",ylab="COMMERCIAL BANK LOANS",main="COMMERCIAL BANK LOANS(COMMERCIAL BORROWING)",col="violetred")
plot.ts(ed[,"b..Securitized.borrowings.inclu..IDBs.and.FCCBs..CB"],xlab="YEARS",ylab="SECURITIZED BORROWING(IDB,FCCB)",main="SECURITIZED BORROWING IDB AND FCCB(CB)",col="violetred")
plot.ts(ed[,"c..Loans.securitized.multi.bilateral.guarantee.and.IFC.W..CB"],xlab="YEARS",ylab="LOANS/SECURITIZED MULT/BILAT GUARANTEE/IFC(W)",main="LOANS/SECURITIZED MULT/BILAT GUARANTEE/IFC(W)",col="violetred")
plot.ts(ed[,"d..Self.Liquidating.Loans.CB"],xlab="YEARS",ylab="SELF LIQUIDATING LOANS",main="SELF LIQUIDATING LOANS(CB)",col="violetred")

#####nri and fc to std######3
plot.ts(ed[,"VI..NRI...FC.B.O..Deposits"],xlab="YEARS",ylab="NRI AND FC DEPOSITS",main="NRI & FC(B&O) Deposits",col="magenta4")
plot.ts(ed[,"VII..Total.Rupee.Debt"],xlab="YEARS",ylab="RUPEE DEBT",main="TOTAL RUPEE DEBT",col="magenta4")
plot.ts(ed[,"a..Defence.RD"],xlab="YEARS",ylab="DEFENCE RD",main="DEFENCE (RUPEE DEBT)",col="magenta4")
plot.ts(ed[,"b..Civilian.RD"],xlab="YEARS",ylab="CIVILIAN RD",main="CIVILIAN (RUPEE DEBT)",col="magenta4")
plot.ts(ed[,"VIII..Total.Long.Term.Debt"],xlab="YEARS",ylab="LONG TERM DEBT",main="TOTAL LONG TERM DEBT",col="magenta4")
plot.ts(ed[,"IX..Total.Short.term.Debt"],xlab="YEARS",ylab="TOTAL SHORT TERM DEBT",main="TOTAL SHORT TERM DEBT",col="magenta4")
plot.ts(ed[,"a..NRI.deposits..up.to.1.year.maturity..STD"],xlab="YEARS",ylab="NRI DEPOSITS",main="NRI DEPOSITS UP TO 1 YEAR MATURITY(STD)",col="magenta4")
plot.ts(ed[,"c..Trade.related.Credits.STD"],xlab="YEARS",ylab="TRADE RELATED CREDITS",main="TRADE RELATED CREDITS(STD)",col="magenta4")
plot.ts(ed[,"c.1..6.months.and.above.up.to.1.year.STD"],xlab="YEARS",ylab="6 MONTHS TO 1 YEAR STD",main="6 MONTHS TO 1 YEAR(STD)",col="magenta4")
plot.ts(ed[,"c.2..Upto.6.months.STD"],xlab="YEARS",ylab="UPTO 6 MONTHS STD",main="UPTO 6 MONTHS(STD)",col="magenta4")
plot.ts(ed[,"d..FII.Investments.in.Govt.T.Bills.and.other.instruments.STD"],xlab="YEARS",ylab="FII INVESTMENTS",main="FII INVESTMENTS IN GOVT T BILLS AND OTHER INSTRUMENTS(STD)",col="magenta4")
plot.ts(ed[,"e..Investment.in.Treasury.Bills.by.Foreign.central.Banks.and.International.Institutions.etc..STD"],xlab="YEARS",ylab="INVESTMENT IN TREASURY BILLS",main="TREASURY INVESTMENT BILLS BY FOREIGN CENTRAL BANKS & INTERNATIONAL INSTITUTIONS(STD)",col="magenta4")
plot.ts(ed[,"f..External.Debt.Liabilities.of.STD"],xlab="YEARS",ylab="EXTERNAL DEBT LIABILITIES",main="EXTERNAL DEBT LIABILITIES(STD)",col="magenta4")
plot.ts(ed[,"f.1.External.Debt.Liabilities.of.Central.Bank.STD"],xlab="YEARS",ylab="EXTERNAL DEBT LIABILITIES(CENTRAL BANK)",main="EXTERNAL DEBT LIABILITIES OF CENTRAL BANK(STD)",col="magenta4")
plot.ts(ed[,"f.2.External.Debt.Liabilities.of.Commercial.Bank.STD"],xlab="YEARS",ylab="EXTERNAL DEBT LIABILITIES(COMMERCIAL BANK)",main="EXTERNAL DEBT LIABILITIES OF COMMERCIAL BANK(STD)",col="magenta4")

###########srija###########
plot.ts(ed[,"Gross.Total.Debt"],xlab="YEARS",ylab="GROSS TOTAL BEBT",main="GROSS TOTAL DEBT",col="BLUE")
plot.ts(ed[,"Concessional.Debt.as...of.Total.Debt"],xlab="YEARS",ylab="CONCESSIONAL DEBT",main="CONCESSIONAL DEBT AS % OF TOTAL DEBT",col="BLUE")
plot.ts(ed[,"Short.Term.Debt.As...of.Total.Debt"],xlab="YEARS",ylab="SHORT TERM DEBT",main="SHORT TERM DEBT AS % OF TOTAL DEBT",col="blue")
plot.ts(ed[,"Debt.Stock...GDP.Ratio"],xlab="YEARS",ylab="DEBT STOCK",main="DEBT STOCK - GDP RATIO",col="blue")
plot.ts(ed[,"Debt.Service.Ratio..."],xlab="YEARS",ylab="Debt Service Ratio(%)",main="DEBT SERVICE RATIO(%)",col="blue")

