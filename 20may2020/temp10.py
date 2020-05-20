temps = [221, 225, 454, -9999, 565]
new_temp = [temp / 10  if temp != -9999 else 0 for temp in temps]

print(new_temp)