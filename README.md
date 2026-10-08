
<h2 align="center">DEM_TWI_Mississauga</h2>
<p align="center">
<img src="DEM_rotation.gif" alt="Rotating 3D view of the Mississauga DEM" width="420">
</p>

<h3 align="center">A Digital Elevation Model and Topographic Wetness Index of Mississauga</h3>

<p align="center">
   The DEM is plotted in R with a hillshaded elevation map, perspective views and a rotating 3D view. The Topographic Wetness Index is now calculated entirely in R with the <code>terra</code> package (flow direction, flow accumulation and slope from the filled DEM), and compared against the original TWI from ArcGIS.
</p>

**View the report:** https://mikaelsyed.github.io/DEM_TWI_Mississauga/

### Files

| File | What it is |
|---|---|
| `DEM_TWI_Mississauga.Rmd` | The analysis. Knit it in RStudio to rebuild `index.html` and `DEM_rotation.gif`. |
| `DEM.tif` | Elevation (m), WGS 84 / Pseudo-Mercator |
| `Fill_DEM.tif` | Elevation with sinks filled (ArcGIS) |
| `TWI.tif` | Topographic Wetness Index (ArcGIS) |
| `Perspective_Plot_Loop_to_Png_Code.txt` | The original perspective-plot loop the rotating GIF is based on |
| `assets/` | Report theme matching [mikaelsyed.com](https://mikaelsyed.com) |
