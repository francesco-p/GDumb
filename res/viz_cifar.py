import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np
sns.set()

df = pd.read_csv('./cifar10_600kib.csv',)

fig, ax = plt.subplots(nrows=1, ncols=1, figsize=(7,5))
sns.lineplot(
        data=df,
        ax=ax,
        x="MemoryExamples", y="Accuracy", style='Approach', hue='Approach',
        markers=True, dashes=True
)

ax.axhline(y=0.35, color='black', label='SOTA (ResNet)')
ax.set_ylim([0.10, 0.7])
ax.set_xscale('log', base=10)
ax.set_title("CIFAR10 Fixed 600 KiB Memory")
ax.legend()

plt.savefig('/tmp/cifar.png')
plt.close()

