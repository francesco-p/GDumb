import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np
sns.set()

df = pd.read_csv('./mnist_382kib.csv',)

fig, ax = plt.subplots(nrows=1, ncols=1, figsize=(7,5))
sns.lineplot(
        data=df,
        ax=ax,
        x="MemoryExamples", y="Accuracy", style='Approach', hue='Approach',
        markers=True, dashes=True
)

ax.axhline(y=0.919, color='black', label='SOTA (MLP)')
ax.set_ylim([0.9, 1])
ax.set_xscale('log', base=10)
ax.set_title("MNIST Fixed 382 KiB Memory")
ax.legend()

plt.savefig('/tmp/mnist.png')
plt.close()

