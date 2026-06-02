# magic-tire-model-MATLAB-SIMULINK
In this part, I implemented the Magic Formula tire model in MATLAB/Simulink using
MATLAB Function blocks. The model is based on the Pacejka tire formulation and includes
nonlinear tire behavior.
I wrote separate MATLAB functions for longitudinal force, lateral force, and self-aligning
moment. The inputs are slip ratio /, slip angle 0, camber angle 1, and vertical load , %.
The parameters used in the model are taken from G. Genta’s book (Appendix A), from the large
front-wheel driven saloon car example.
This model is more realistic than the linear model because it can show nonlinear effects like
saturation at high slip values.
The Simulink model used in this part is shown in the below. In the model, separate subsystems
were created for each force component. Each subsystem contains MATLAB Function blocks
where the Pacejka equations from the lecture notes were implemented.
The outputs of these function blocks were used to compute the longitudinal force, lateral force,
and self-aligning moment.
The MATLAB Function blocks used for each force component are given below.
Finally, the results are plotted in MATLAB as:
• Longitudinal force , ! vs slip ratio /
• Lateral force , " vs slip angle 0
• Self-aligning moment 2#$ vs slip angle 0
The results of the Magic Formula tire model show a nonlinear behavior compared to the linear
tire model. Unlike the linear model, the forces do not increase proportionally with slip ratio or
slip angle.In the Magic Formula model, the tire forces first increase and then reach a saturation
region due to friction limits. This behavior is more realistic because real tires cannot generate
infinite force with increasing slip.
Compared to the linear model, the Magic Formula provides more accurate results, especially at
high slip values, where nonlinear effects become dominant.
