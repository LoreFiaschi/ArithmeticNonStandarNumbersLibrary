from pygmo import *
from matplotlib import pyplot as plt 
import json
# prob = zdt(3)
prob = dtlz(prob_id = 7, fdim = 5, dim=7)

alg = algorithm(nsga2(gen=30))
pop = population(prob, 100)
pop = alg.evolve(pop)
points = pop.get_f()
ax = plot_non_dominated_fronts(points)

plt.title("Plot")

with open("test.json", "w") as outfile:
    json.dump(points.tolist(), outfile)

hv = hypervolume(points)
ref_point = [50, 50, 50, 50, 50]
hv_value = hv.compute(ref_point)
print(hv_value)
# plt.show()