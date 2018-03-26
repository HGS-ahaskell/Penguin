pro barplotstuff

  nBars = 3
  index = 0
  colors = ['red','yellow','blue']
  data = RANDOMU(s,10,nBars)
  for i=0,nBars-1 do $
    b = BARPLOT(data[*,i], NBARS=nBars, INDEX=index++, $
                FILL_COLOR=colors[i], /OVERPLOT)

  data1 = SIN((FINDGEN(15)+1)/15*!PI/2)
  data2 = data1+COS((FINDGEN(15)+0)/15*!PI/2)
  data3 = data2+0.25+RANDOMU(s,15)
  b1 = BARPLOT(data1)
  b2 = BARPLOT(data2, BOTTOM_VALUES=data1, $
               FILL_COLOR='yellow', /OVERPLOT)
  b3 = BARPLOT(data3, BOTTOM_VALUES=data2, $
               FILL_COLOR='red', /OVERPLOT) 

  data = (RANDOMU(s,10)+0.1) < 1
  bottom = (data/4-0.1) > 0
  b = BARPLOT(data, BOTTOM_VALUES=bottom, FILL_COLOR='yellow',$
              COLOR='blue', THICK=2, LINESTYLE='dashed', /HORIZONTAL)

  b = barplot(randomu(s,10)*2, BOTTOM_COLOR='aqua')
  
  data = (RANDOMU(s,10)+1)
  bottom = (RANDOMU(s,10))
  b = barplot(data, BOTTOM_VALUES=bottom, $
               BOTTOM_COLOR='yellow', FILL_COLOR='red', $
               C_RANGE=[0.2,1.8])
  
end
