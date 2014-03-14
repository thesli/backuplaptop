package net.foodTicket;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

import java.util.ArrayList;

public class main_Activity extends Activity {


    /**
     * Called when the activity is first created.
     */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.main);
    }

    public void init(){
        String[] foodlist = new String[]{
                "mango","curry","apple","orange"
        };
        ArrayList<String> arrlist = new ArrayList<String>();
        for(String food : foodlist){
            arrlist.add(food);
        }
        ListView lv = (ListView) findViewById(R.id.foodlist);
        ArrayAdapter<String> arr = new ArrayAdapter<String>(getApplicationContext(),android.R.layout.simple_list_item_1,arrlist);
        lv.setAdapter(arr);
        lv.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                Toast.makeText(getApplicationContext(),String.valueOf(i)+ "," +String.valueOf(l),Toast.LENGTH_SHORT).show();
            }
        });
    }

    @Override
    protected void onResume() {
        super.onResume();
    }
}
