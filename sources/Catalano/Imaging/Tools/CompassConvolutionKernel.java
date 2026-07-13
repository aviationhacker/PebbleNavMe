package Catalano.Imaging.Tools;

/* JADX INFO: loaded from: classes.dex */
public final class CompassConvolutionKernel {
    public static float[][] Isotropic_North = {new float[]{-1.0f, 0.0f, 1.0f}, new float[]{-1.4142135f, 0.0f, 1.4142135f}, new float[]{-1.0f, 0.0f, 1.0f}};
    public static float[][] Isotropic_Northwest = {new float[]{0.0f, 1.0f, 1.4142135f}, new float[]{-1.0f, 0.0f, 1.0f}, new float[]{-1.4142135f, -1.0f, 0.0f}};
    public static float[][] Isotropic_West = {new float[]{1.0f, 1.4142135f, 1.0f}, new float[]{0.0f, 0.0f, 0.0f}, new float[]{-1.0f, -1.4142135f, -1.0f}};
    public static float[][] Isotropic_Southwest = {new float[]{1.4142135f, 1.0f, 0.0f}, new float[]{1.0f, 0.0f, -1.0f}, new float[]{0.0f, -1.0f, -1.4142135f}};
    public static float[][] Isotropic_South = {new float[]{1.0f, 0.0f, -1.0f}, new float[]{1.4142135f, 0.0f, -1.4142135f}, new float[]{1.0f, 0.0f, -1.0f}};
    public static float[][] Isotropic_Southeast = {new float[]{0.0f, -1.0f, -1.4142135f}, new float[]{1.0f, 0.0f, -1.0f}, new float[]{1.4142135f, 1.0f, 0.0f}};
    public static float[][] Isotropic_East = {new float[]{-1.0f, -1.4142135f, -1.0f}, new float[]{0.0f, 0.0f, 0.0f}, new float[]{1.0f, 1.4142135f, 1.0f}};
    public static float[][] Isotropic_Northeast = {new float[]{-1.4142135f, -1.0f, 0.0f}, new float[]{-1.0f, 0.0f, 1.0f}, new float[]{0.0f, 1.0f, 1.4142135f}};
    public static int[][] Kirsch_North = {new int[]{-3, -3, 5}, new int[]{-3, 0, 5}, new int[]{-3, -3, 5}};
    public static int[][] Kirsch_Northwest = {new int[]{-3, 5, 5}, new int[]{-3, 0, 5}, new int[]{-3, -3, -3}};
    public static int[][] Kirsch_West = {new int[]{5, 5, 5}, new int[]{-3, 0, -3}, new int[]{-3, -3, -3}};
    public static int[][] Kirsch_Southwest = {new int[]{5, 5, -3}, new int[]{5, 0, -3}, new int[]{-3, -3, -3}};
    public static int[][] Kirsch_South = {new int[]{5, -3, -3}, new int[]{5, 0, -3}, new int[]{5, -3, -3}};
    public static int[][] Kirsch_Southeast = {new int[]{-3, -3, -3}, new int[]{5, 0, -3}, new int[]{5, 5, -3}};
    public static int[][] Kirsch_East = {new int[]{-3, -3, -3}, new int[]{-3, 0, -3}, new int[]{5, 5, 5}};
    public static int[][] Kirsch_Northeast = {new int[]{-3, -3, -3}, new int[]{-3, 0, 5}, new int[]{-3, 5, 5}};
    public static int[][] Prewitt_North = {new int[]{-1, 0, 1}, new int[]{-1, 0, 1}, new int[]{-1, 0, 1}};
    public static int[][] Prewitt_Northwest = {new int[]{0, 1, 1}, new int[]{-1, 0, 1}, new int[]{-1, -1, 0}};
    public static int[][] Prewitt_West = {new int[]{1, 1, 1}, new int[]{0, 0, 0}, new int[]{-1, -1, -1}};
    public static int[][] Prewitt_Southwest = {new int[]{1, 1, 0}, new int[]{1, 0, -1}, new int[]{0, -1, -1}};
    public static int[][] Prewitt_South = {new int[]{1, 0, -1}, new int[]{1, 0, -1}, new int[]{1, 0, -1}};
    public static int[][] Prewitt_Southeast = {new int[]{0, -1, -1}, new int[]{1, 0, -1}, new int[]{1, 1, 0}};
    public static int[][] Prewitt_East = {new int[]{-1, -1, -1}, new int[]{0, 0, 0}, new int[]{1, 1, 1}};
    public static int[][] Prewitt_Northeast = {new int[]{-1, -1, 0}, new int[]{-1, 0, 1}, new int[]{0, 1, 1}};
    public static int[][] Robinson_North = {new int[]{-1, 0, 1}, new int[]{-2, 0, 2}, new int[]{-1, 0, 1}};
    public static int[][] Robinson_Northwest = {new int[]{0, 1, 2}, new int[]{-1, 0, 1}, new int[]{-2, -1, 0}};
    public static int[][] Robinson_West = {new int[]{1, 2, 1}, new int[]{0, 0, 0}, new int[]{-1, -2, -1}};
    public static int[][] Robinson_Southwest = {new int[]{2, 1, 0}, new int[]{1, 0, -1}, new int[]{0, -1, -2}};
    public static int[][] Robinson_South = {new int[]{1, 0, -1}, new int[]{2, 0, -2}, new int[]{1, 0, -1}};
    public static int[][] Robinson_Southeast = {new int[]{0, -1, -2}, new int[]{1, 0, -1}, new int[]{2, 1, 0}};
    public static int[][] Robinson_East = {new int[]{-1, -2, -1}, new int[]{0, 0, 0}, new int[]{1, 2, 1}};
    public static int[][] Robinson_Northeast = {new int[]{-2, -1, 0}, new int[]{-1, 0, 1}, new int[]{0, 1, 2}};
    public static int[][] Scharr_North = {new int[]{-1, 0, 1}, new int[]{-3, 0, 3}, new int[]{-1, 0, 1}};
    public static int[][] Scharr_Northwest = {new int[]{0, 1, 3}, new int[]{-1, 0, 1}, new int[]{-3, -1, 0}};
    public static int[][] Scharr_West = {new int[]{1, 3, 1}, new int[]{0, 0, 0}, new int[]{-1, -3, -1}};
    public static int[][] Scharr_Southwest = {new int[]{3, 1, 0}, new int[]{1, 0, -1}, new int[]{0, -1, -3}};
    public static int[][] Scharr_South = {new int[]{1, 0, -1}, new int[]{3, 0, -3}, new int[]{1, 0, -1}};
    public static int[][] Scharr_Southeast = {new int[]{0, -1, -3}, new int[]{1, 0, -1}, new int[]{3, 1, 0}};
    public static int[][] Scharr_East = {new int[]{-1, -3, -1}, new int[]{0, 0, 0}, new int[]{1, 3, 1}};
    public static int[][] Scharr_Northeast = {new int[]{-3, -1, 0}, new int[]{-1, 0, 1}, new int[]{0, 1, 3}};
    public static int[][] Sobel_North = {new int[]{-1, 0, 1}, new int[]{-2, 0, 2}, new int[]{-1, 0, 1}};
    public static int[][] Sobel_Northwest = {new int[]{0, 1, 2}, new int[]{-1, 0, 1}, new int[]{-2, -1, 0}};
    public static int[][] Sobel_West = {new int[]{1, 2, 1}, new int[]{0, 0, 0}, new int[]{-1, -2, -1}};
    public static int[][] Sobel_Southwest = {new int[]{2, 1, 0}, new int[]{1, 0, -1}, new int[]{0, -1, -2}};
    public static int[][] Sobel_South = {new int[]{1, 0, -1}, new int[]{2, 0, -2}, new int[]{1, 0, -1}};
    public static int[][] Sobel_Southeast = {new int[]{0, -1, -2}, new int[]{1, 0, -1}, new int[]{2, 1, 0}};
    public static int[][] Sobel_East = {new int[]{-1, -2, -1}, new int[]{0, 0, 0}, new int[]{1, 2, 1}};
    public static int[][] Sobel_Northeast = {new int[]{-2, -1, 0}, new int[]{-1, 0, 1}, new int[]{0, 1, 2}};

    private CompassConvolutionKernel() {
    }
}
