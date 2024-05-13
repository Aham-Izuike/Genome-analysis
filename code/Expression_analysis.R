counts <- read.table("/Users/ahamogueri/Downloads/featurecounts.txt", header=TRUE, row.names=1, sep="\t")
colnames(counts) <- c("s_69", "s_70", "s_71", "bh_72", "bh_73", "bh_ 74")

head(counts)
summary(rowSums(counts))
dim(counts)  # This will give you the number of rows and columns
filtered_counts <- counts[!grepl("^__", rownames(counts)), ]


dim(filtered_counts)


install.packages("BiocManager")
install.packages("pheatmap")
BiocManager::install("DESeq2", version = "3.18")

library(DESeq2)
library(ggplot2)
library(pheatmap)

conditions <- factor(c(rep("control", times=3), rep("treatment", times=3)))
colData <- data.frame(row.names=colnames(counts), condition=conditions)

dds <- DESeqDataSetFromMatrix(countData = filtered_counts, colData = colData, design = ~ condition)
dds <- DESeq(dds)
res <- results(dds)
res
plotMA(res, main="MA-plot", ylim=c(-2,2))
normalized_counts <- counts(dds, normalized=TRUE)


#filter the results by p-value
res_filtered <- res[!is.na(res$pvalue) & res$pvalue <= 0.0001,  ]
dim(res_filtered)

# Sorting 'res_filtered' by absolute log2 fold change in descending order
res_sorted_by_log2FC <- res_filtered[order(-abs(res_filtered$log2FoldChange)), ]

# Viewing the top genes
top_log2FC_genes <- head(res_sorted_by_log2FC, n=20)  # Adjust 'n' for the number of genes you want
print(top_log2FC_genes)
head(top_log2FC_genes, 10)
summary(abs(top_log2FC_genes$log2FoldChange))


heatmap_data <- normalized_counts[rownames(top_log2FC_genes), ]

# Assuming colData has a 'condition' column
annotation_col = data.frame(Condition = colData(dds)$condition)
rownames(annotation_col) = colnames(dds)

pheatmap(log2(heatmap_data + 1), clustering_distance_rows = "euclidean", clustering_distance_cols = "euclidean", scale = "row", annotation_col = annotation_col)


