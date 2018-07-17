### ezsurfer.R: Surfer-like visualization


par(mar = rep(1, 4), 
    mai = rep(1, 4))

# elev: elevation raster* object.
### - should have single layer
### - both extent and resolution of this object should be equal to those of brs.
# brs: drawn raster* object.

plot3D::persp3D(z = as.matrix(elev),
                border = 'light grey', 
                lwd = 0.33, 
                colvar = as.matrix(brs), 
                phi = 40, 
                theta = -36, 
                #col = c('white', 'red', 'black'), 
                #breaks = c(0,1, 33, 100), 
                colkey = FALSE,
                zlim = c(4, 18),
                expand = 0.25, 
                resfac = 0.2, # roughen the resolution of the original raster (1/resfac spatial unit will be the spatial resolution of the drawn plot)
                curtain = FALSE, 
                box = T,
                d = 2, 
                r = 0,
                legend = FALSE)
