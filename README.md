<h2>Bank Marketing Campaign Analysis</h2>
<h4>A Data Analytics Case Study | SQL &middot; Power BI</h4>

<h3>Table of Contents</h3>
<ol>
  <li>Background and Overview</li>
  <li>Executive Summary</li>
  <li>Business Problems</li>
  <li>Methodology</li>
  <li>Skills Demonstrated</li>
  <li>Key Insights and Results</li>
  <li>Dashboard Features</li>
  <li>Business Recommendations</li>
  <li>Next Steps</li>
</ol>



<h3>Background and Overview</h3>
<p>Between May 2008 and November 2010, a Portuguese banking institution conducted a series of direct marketing campaigns(phone calls) to exisiting customers. The goal of the campaign was to sell term deposit subscriptions, basically a fixed-term savings product where customers can lock in an amount of money for a period of time and receive interest rates in return.</p>
<p>During this time was the 2008 financial global crisis, it was an economically challenging time. There was a lot of hysteria and this caused a huge drop in consumer confidence and a lot of financial institutions were under a lot of pressure to increase and retain deposits.</p>
<p>This project uses the UCI Bank Marketing dataset, it is one of the well studied and researched real world marketing dataset in data analytics and it contains 41,188 client contact records.</p>

<h3>Executive Summary</h3>
<p>During the campaign period 41,188 contacts were made and 4,640 subscribed, showing a conversion rate of 11.27%. The analysis revealed that the conversion rates varied across client segments, number of contact and economic conditions from as low as 3% and high as 42% depending on the factors involved. The analysis identified five primary patterns of conversion:</p>

<ul>
  <li>Clients with a prior successful campaign outcome converted at 65.11%, almost 6 times the base conversion rate.</li>
  <li>Call duration was the strongest behavioural predictor, the average convertors call time duration was 9 minutes while non-converters was 3.8 minutes.</li>
  <li>Students and retired clients convertered more than any other job segment. The conversion rate in students is 31.4%, and with the retired is 25.2% </li>
  <li>Conversion rate declined with every additional contact attempt</li>
  <li>Lower euribor interest rate increased conversion. Clients contacted at rates below 1% converted at 26.49% vs 9.69% when rates were above 4%.</li>
</ul>
<p>These findings are clear and actionable. This can be a resource that can improve recommendations that can make the campaign more successful.</p>

<h3>Business Problems</h3>

<h4>Industry Challenges in Direct Marketing Campaigns</h4>
<p>Direct marketing campaigns particularly telephone or cellular based outreach is one of the more challengeing marketing methods today. Before any data is analyzed, these type of campaigns face structural problems that can make them ineffective and unsustainable:</p>
<ul>
  <li>Intrusiveness and customer resistance</li>
  <p>Cold calling is seen as one of the more intrusive forms of marketing, client </p>
  <li>Brand Damage</li>
  <li>Regulatory and compliance risks</li>
  <li>Wasted budget and low ROI</li>
  <li>Data quality and hygeine</li>
  <li>Agent rejection and morale</li>
  <li>High agent turnover and operational costs</li>
  <li>Brand damage</li>
</ul>

<h4>Analytical Problems This Project Adresses</h4>
<p>These industry wide challenges share somthing in common, campaigns that do not use data effectively to guide who is contacted, when, how often and which channel. This analysis was designed to adress the gape and frame them around this four business questions.</p>
<ol>
  <li>When should campaigns run?</li>
  <li>Who should be targeted first?</li>
  <li>How should clients be targeted?</li>
  <li>What role does the economy play?</li>
</ol>

<h3>Methodology</h3>
<h5>Tools</h5>
<ul>
  <li>SQL Server: Database hosting and data storage.</li>
  <li>SSMS(SQL Server Management Studio 21): Data ingestion, cleaning and analytical querying.</li>
  <li>Power BI Desktop: Data modelling, DAX measures and interactive dashboards.</li>
</ul>

<h5>Data Preparation and Modelling</h5>
<ul>
  <li></li>
</ul>

<h4>Key Insights and Results</h4>
<ol>
  <li>11.27% Overall Conversion Rate</li>
  <li>Strong seasonal patterns in conversion</li>
  <li>Cellular outperforms telephone</li>
  <li>Previous campaign success is a strong indicator of conversion</li>
  <li>Diminishing returns set in quickly</li>
  <li>Retired and student are the highest value</li>
  <li></li>
</ol>

<h4>Dashboard Features</h4>

<ol>
  <li>Page 1 - Campaign Overview</li>
  <li>Page 2 - Client Segmentation</li>
  <li>Page 3 - Behavioural Insights</li>
</ol>

<h6>Interactive Features</h6>

<h4>Business Recommendations</h4>
<ol>
  <li>Prioritise engagement with previously converted clients</li>
  <li>Implement a contact cap of 3-5 calls per client</li>
  <li>Concentrate campaign volume in March, September, October and December/li>
  <li>Shift remaining telephone contacts to cellular</li>
  <li>Reweight targeting towards retired, student and under 25/over 55 segments</li>
  <li>Account for macroeconomic timing in campaign planning</li>
  <li>Invest in data hygiene as a company prerequisite</li>
</ol>

<h4>Next Steps</h4>
<p>With more time and resources, the project can be expanded upon</p>
<ul>
  <li>Add euribor rate analysis as an economic context visual, to show how interest rate movements correlate with conversion performance over time.</li>
  <li>Build a client scoring model by using the strongest predictors(previous outcome, job type, age group, contact channel) to rank future contact lists.</li>
</ul>

<h4>Citation:</h4>
  <ul>
    <li>[Moro et al., 2014] S. Moro, P. Cortez and P. Rita. A Data-Driven Approach to Predict the Success of Bank Telemarketing. Decision Support Systems, In press, http://dx.doi.org/10.1016/j.dss.2014.03.001</li>
    <li>Available at: [pdf] http://dx.doi.org/10.1016/j.dss.2014.03.001
                [bib] http://www3.dsi.uminho.pt/pcortez/bib/2014-dss.txt</li>
  </ul>
