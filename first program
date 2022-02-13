import javax.xml.namespace.QName;
import java.util.*;
public class shop {
    public static void main (String[]args){
        CountableItem i1=new CountableItem(6,2,"EGG");
        CountableItem i2=new CountableItem(3,40,"books");
        UnCountableItem i3=new UnCountableItem(10,2.5,"tomato");
        UnCountableItem i4=new UnCountableItem(100,1,"meat");
        ShoppingCart c=new ShoppingCart();
        c.AddItem(i1);
        c.AddItem(i2);
        c.AddItem(i3);
        c.AddItem(i4);
        c.ShowItem();


    }
}
class item {
    private String name;
    private double price;

    item( double price ,String name) {
        this.price = price;
        this.name=name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getprice() {
        return price;
    }

    public void setName(double price) {
        this.price = price;
    }

    public double GetItemCost() {
        return 1.0;
    }

    @Override
    public String toString() {
        return "item{" +
                "name='" + name + '\'' +
                ", price=" + price +
                '}';
    }
}
class CountableItem extends  item{
    private int NOI;

    public int getNOI() {
        return NOI;
    }

    public void setNOI(int NOI) {
        this.NOI = NOI;
    }

    public CountableItem(int number, float price , String name )
    {
        super(price,name);
        NOI=number;
    }
    @Override
    public double GetItemCost(){
        double x=NOI*super.getprice();
        return x;
    }
    @Override
    public String toString() {
        return "CountableItem{" +
                "NubmerOfItem=" + NOI +
                '}';
    }
}
class UnCountableItem extends item{
    private  double weight;

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public UnCountableItem(double price, double weight, String name) {
        super(price, name);
        this.weight = weight;
    }
    @Override
    public double GetItemCost() {
         double y= weight*super.getprice();
        return y;
    }

    @Override
    public String toString() {
        return "UnCountableItem{" +
                "weight=" + weight +
                '}';
    }
}
 class ShoppingCart{
    ArrayList<item> items=new ArrayList<>();
    public void AddItem(item item){
        items.add(item);
    }
    public double GetTotalCost()
    {
        double TotalCost=0;
        for(item item:items)
        {
            if (item instanceof CountableItem)
                TotalCost+=((CountableItem)  item).GetItemCost();
            else if (item instanceof  UnCountableItem)
                TotalCost+=((UnCountableItem)  item).GetItemCost();
        }
        return TotalCost;
    }
    public void ShowItem()
    {
        CountableItem i1=null;
        UnCountableItem i2=null;
        for(item item:items)
            if(item instanceof CountableItem){
                i1=(CountableItem) item;
                System.out.println(i1.getName()+"\t"+i1.GetItemCost()/i1.getNOI()+"\t"+i1.getNOI()+"\t"+i1.GetItemCost());
            }
        else if (item instanceof UnCountableItem){
            i2=(UnCountableItem) item;
                System.out.println(i2.getName()+"\t"+i2.GetItemCost()/ i2.getWeight()+"\t"+i2.getWeight()+"\t"+i2.GetItemCost());
            }

    }
}
