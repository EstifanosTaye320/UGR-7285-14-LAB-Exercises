package com.example.xmlcounter

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {

    private lateinit var counterText: TextView
    private var counter = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        counterText = findViewById(R.id.counterText)
        val incrementButton = findViewById<Button>(R.id.incrementButton)
        val resetButton = findViewById<Button>(R.id.resetButton)
        val decrementButton = findViewById<Button>(R.id.decrementButton)

        incrementButton.setOnClickListener {
            counter++
            updateCounterText()
        }

        resetButton.setOnClickListener {
            counter = 0
            updateCounterText()
        }

        decrementButton.setOnClickListener {
            counter--
            updateCounterText()
        }
    }

    private fun updateCounterText() {
        counterText.text = counter.toString()
    }
}