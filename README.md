# what_does_food_sound_like

# Example of Data Sonification Meant to Help Thinking About Nutrition

This is a simple script written for use on [SonicPi](https://sonic-pi.net). The idea was inspired by Shawn Graham's thoughtful [writing and tutorials](https://programminghistorian.org/en/lessons/sonification#sonic-pi) on sonifying historical data. 

Based on the metrics of sodium, fat, and carbohydrates, the script generates specific notes based on those metrics. If the metrics exceed healthy amounts for a single serving, it will play in a minor key. If it the numbers are within a healthy range, it will be in a major key. 

## Examples

Here are some example sounds of differnet foods and beverage nutritional data, rendered .wav format. 

[![image of latte](https://github.com/milesccoleman/whatdoesfoodsoundlike/blob/master/latte.jp2?raw=true "Starbucks Pumpkin Spice Latte (Venti, Whole Milk)")](https://github.com/milesccoleman/whatdoesfoodsoundlike/blob/master/ventiwholemilkpumpkinspicelatte.wav?raw=true}

To try it yourself: 
1. Clone the [repository](https://github.com/milesccoleman/whatdoesfoodsoundlike), or download the [zip](https://github.com/milesccoleman/whatdoesfoodsoundlike/archive/master.zip). 
2. Open whatdoesfoodsoundlike.rb with SonicPi(https://sonic-pi.net). 
3. Navigate to ```data = CSV.parse(File.read("/your/file/path/whatdoesfoodsoundlike.csv"), {:headers => true, :header_converters => :symbol})``` within the code.
4. Replace ```/your/file/path/elements.csv``` with your own file path. 
5. Edit the values for sodium, fat, and carbohydrates so that they correspond to the nutritional label of a food that you choose. 
6. Press play in SonicPi and listen to the sweet music of food. 

Also, you might try designing your own sounds by tweaking the parameters of the instruments in the code. 

Find documentation on SonicPi [here](https://sonic-pi.net/tutorial.html). 
