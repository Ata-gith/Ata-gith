# %%
import numpy as np
import matplotlib.pyplot as plt
import scipy    
import plotly.graph_objects as go
from plotly.colors import n_colors

# %%
atom_vec = []

filename = "neutral_ef0.2.dump"

for r in open(filename):
    if not r[0] in ('I','#','0','-','\n'):
        r = r[:-2]
        #print(r)
        tuples = [float(y) for y in r.split(" ")]
        #print(tuples)
        atom_vec.append(tuples)


# %%
#for i in atom_vec:
#    print(i)

# %%
a=len(atom_vec)

# %%
a/103

# %%
frame_count=0

atom_vec_arr=[]

particle_col = 1

for i in atom_vec:
    if len(i)==1:
        frame_count=frame_count+1
    if len(i)==5:
        atom_vec_arr.append(i)


frame_count=frame_count/2
#frame_count = int(frame_count)
frame_count=int(frame_count)
print(frame_count)

atom_vec_arr = np.array(atom_vec_arr)
print(len(atom_vec_arr)/(frame_count))

print(np.shape(atom_vec_arr))
atom_dat=np.reshape(atom_vec_arr,(frame_count,len(atom_vec_arr)//frame_count,len(atom_vec_arr[0])))

# %%
print(atom_dat[4,:,:])

# %%
id1,id2=[84,172]


# %%
print(len(atom_vec_arr)/frame_count)

# %%
print(len(atom_vec_arr))

# %%
a = np.array(clean_list_disps_0_2)
print(len(a)/183)

# %%
id_type_dipslacement_dsp_0_2 = np.array(clean_list_disps_0_2)
length = len(id_type_dipslacement_dsp_0_2)


