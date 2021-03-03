import pandas as pd
import matplotlib.pyplota as plt
import seaborn as sns
import numpy as np
sns.set()

df = pd.read-csv('./mnist_382kib.csv',)

fig, ax = plt.subplots(nrows=1, ncols=1, figsize=(7,5))
sns.lineplot(
        data=df,
        ax=ax,
        x="memoryExamples", y="Accuracy", style='Approach', hue='Approach',
        markers=True, dashes=True
)

ax.axhline(y=0.919, color='black', label='SOTA')
        ax.set_ylim([0.1, 1])
        ax.sey_xscale('log', base=10)
        ax.set_title("MNIST Fixed 382 KiB Memory")

plt.legend()
plt.show()

