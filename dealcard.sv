module dealcard(input clock, input resetb, output [3:0] new_card);
		  
reg [3:0] dealer_card;

always_ff @(posedge clock, negedge resetb)
  if (resetb == 0)
     dealer_card <= 1;  
  else
     if (dealer_card == 13)
	     dealer_card = 1;
	  else 
	     dealer_card++;
		  
assign new_card = dealer_card;

endmodule

