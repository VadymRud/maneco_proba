#Йолочка розмір yd
yd = int(input('Введіть непарне число:'))

# Перевірка на число та на непарність
if isinstance(yd, int):
    
    if (yd % 2) == 1:
        
        # ціла половика від введенного числа
        hiyd = yd
        # кількість зірочок
        istars =1
        # строка для мінусів
        strminus = ''
        # строка для зірочок
        strstars = ''
        # строка для виводу на екран
        strinput = ''
        
        for x in range(yd):
            istars = x+1

            
            strstars = '*' * istars
            strminus = '-' * hiyd
            strinput = strminus+strstars+strminus
            hiyd = hiyd- 1
            
            print(strinput)
                   
            
            

            
    else:
        print('Введіть непарне число')
else:
    print('Введіть ціле число')

