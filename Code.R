#https://github.com/yanlinlin82/ggvenn
#https://www.datanovia.com/en/blog/beautiful-ggplot-venn-diagram-with-r/

#install.packages("ggvenn")
#install.packages("ggplot2")

gene <- list(`Set 1` = c('a', 'b', 'c', 'd', 'e'),
          `Set 2` = c('f', 'g', 'h', 'i'),
          `Set 3` = c('j', 'k', 'l', 'm'),
          `Set 4` = c('n', 'o', 'p', 'q'))
ggvenn(gene, c("Set 1", "Set 2"))            # draw two-set venn
ggvenn(gene, c("Set 1", "Set 2", "Set 3"))   # draw three-set venn
ggvenn(gene)   # without set names, the first 4 elements in list will be chose to draw four-set venn


names(gene) <- c("Set 1","Set 2","Set 3", "Set 4")
ggvenn(gene, fill_color = c(

"#0073C2FF", "#EFC000FF", "#868686FF", "#CD534CFF"), stroke_size = 0.5, set_name_size = 4)
