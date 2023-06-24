package app.ij.mlwithtensorflowlite;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

public class HomeFragment extends Fragment {

    Button scanBtn;
    TextView textView1, textView2;

//    public HomeFragment() {
//        // Required empty public constructor
//        super(R.layout.fragment_home);
//    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_home, container, false);

        scanBtn = view.findViewById(R.id.button);
        textView1 = view.findViewById(R.id.textView1);
//        textView2 = view.findViewById(R.id.textView2);

        scanBtn.setOnClickListener(view1 -> {
            onClickBtn(getContext());
        });
        return  view;
    }

    public void onClickBtn(Context context){
        Intent intent = new Intent(context, MainActivity.class);
        startActivity(intent);
    }
}
