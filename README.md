# Example of Data Sonification for Thinking about Nutrition

This is a simple script written for use on [SonicPi](https://sonic-pi.net). The idea was inspired by Shawn Graham's thoughtful [writing and tutorials](https://programminghistorian.org/en/lessons/sonification#sonic-pi) on sonifying historical data. 

Based on the metrics of sodium, fat, and carbohydrates, the script generates specific notes based on those metrics. If the metrics exceed healthy amounts for a single serving, it will play in a minor key. If it the numbers are within a healthy range, it will be in a major key. 

## Examples

Here are some example sounds of different foods and beverage nutritional data, rendered .wav format. 


### 1. Starbucks Pumpkin Spice Latte (Venti, Whole Milk)
![image of latte](https://github.com/milesccoleman/whatdoesfoodsoundlike/blob/master/latte.jpg?raw=true "Starbucks Pumpkin Spice Latte (Venti, Whole Milk)")
![image of pumpkin spice latte nutritional value](https://github.com/milesccoleman/whatdoesfoodsoundlike/blob/master/pslatte.png?raw=true "Starbucks Pumpkin Spice Latte Nutrition (Venti, Whole Milk)")

Hear sound of a Pumpkin Spice Latte 
<audio controls>
  <source src="https://github.com/milesccoleman/whatdoesfoodsoundlike/blob/master/ventiwholemilkpumpkinspicelatte.wav?raw=true" type="audio/ogg">
</audio>

### 2. McDonald's Big Mac
![image of big mac](https://github.com/milesccoleman/whatdoesfoodsoundlike/blob/master/bigmac.png?raw=true "McDonald's Big Mac")
![image of big mac latte nutritional value](https://github.com/milesccoleman/whatdoesfoodsoundlike/blob/master/mcbigmac.png?raw=true "McDonald's Big Mac Nutrition")

Download sound of a [Big Mac](https://github.com/milesccoleman/whatdoesfoodsoundlike/blob/master/big_mac.wav?raw=true) ("Right-Click and "Download Linked File")  


### 3. Wendy's Garden Salad 
![image of salad](https://github.com/milesccoleman/whatdoesfoodsoundlike/blob/master/salad.png?raw=true "Wendy's Garden Salad")
![image of big mac latte nutritional value](https://github.com/milesccoleman/whatdoesfoodsoundlike/blob/master/wendyssalad.png?raw=true "Wendy's Garden Salad Nutrition")

Download the sound of a [Garden Salad](https://github.com/milesccoleman/whatdoesfoodsoundlike/blob/master/wendysgardensidesalad.wav?raw=true) ("Right-Click and "Download Linked File")  


### 4. Quaker Oats 
![image of oats](https://github.com/milesccoleman/whatdoesfoodsoundlike/blob/master/oats.jpeg?raw=true "Quaker Oats")
![image of big mac latte nutritional value](https://github.com/milesccoleman/whatdoesfoodsoundlike/blob/master/quakeroats.png?raw=true "Quaker Oats Nutrition")

Download the sound of [Oats](https://github.com/milesccoleman/whatdoesfoodsoundlike/blob/master/quakersoatmealplain.wav?raw=true) ("Right-Click and "Download Linked File")  


To try it yourself: 
1. Clone the [repository](https://github.com/milesccoleman/whatdoesfoodsoundlike), or download the [zip](https://github.com/milesccoleman/whatdoesfoodsoundlike/archive/master.zip). 
2. Open whatdoesfoodsoundlike.rb with SonicPi(https://sonic-pi.net). 
3. Navigate to ```data = CSV.parse(File.read("/your/file/path/whatdoesfoodsoundlike.csv"), {:headers => true, :header_converters => :symbol})``` within the code.
4. Replace ```/your/file/path/elements.csv``` with your own file path. 
5. Edit the values for sodium, fat, and carbohydrates so that they correspond to the nutritional label of a food that you choose. 
6. Press play in SonicPi and listen to the sweet music of food. 


Also, you might try designing your own sounds by tweaking the parameters of the instruments in the code. 


Find documentation on SonicPi [here](https://sonic-pi.net/tutorial.html). 
