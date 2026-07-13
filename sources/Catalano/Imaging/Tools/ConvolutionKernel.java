package Catalano.Imaging.Tools;

/* JADX INFO: loaded from: classes.dex */
public final class ConvolutionKernel {
    public static int[][] Laplacian = {new int[]{-1, -1, -1}, new int[]{-1, 8, -1}, new int[]{-1, -1, -1}};
    public static int[][] SobelVertical = {new int[]{-1, 0, 1}, new int[]{-2, 0, 2}, new int[]{-1, 0, 1}};
    public static int[][] SobelHorizontal = {new int[]{-1, -2, -1}, new int[]{0, 0, 0}, new int[]{1, 2, 1}};
    public static int[][] SobelCross3x3 = {new int[]{-1, 0, 1}, new int[]{0, 0, 0}, new int[]{1, 0, -1}};
    public static int[][] SobelCross5x5 = {new int[]{-1, -2, 0, 2, 1}, new int[]{-2, -4, 0, 4, 0}, new int[]{0, 0, 0, 0, 0}, new int[]{2, 4, 0, -4, -2}, new int[]{1, 2, 0, -2, -1}};
    public static int[][] SobelHorizontalSD3x3 = {new int[]{1, 2, 1}, new int[]{-2, -4, -2}, new int[]{1, 2, 1}};
    public static int[][] SobelHorizontalSD5x5 = {new int[]{1, 4, 6, 4, 1}, new int[]{0, 0, 0, 0, 0}, new int[]{-2, -8, -12, -8, -2}, new int[]{0, 0, 0, 0, 0}, new int[]{1, 4, 6, 4, 1}};
    public static int[][] SobelVerticalSD3x3 = {new int[]{1, -2, 1}, new int[]{2, -4, 2}, new int[]{1, -2, 1}};
    public static int[][] SobelVerticalSD5x5 = {new int[]{1, 0, -2, 0, 1}, new int[]{4, 0, -8, 0, 4}, new int[]{6, 0, -12, 0, 6}, new int[]{4, 0, -8, 0, 4}, new int[]{1, 0, -2, 0, 1}};
    public static int[][] PrewittHorizontal = {new int[]{1, 0, -1}, new int[]{1, 0, -1}, new int[]{1, 0, -1}};
    public static int[][] PrewittVertical = {new int[]{1, 1, 1}, new int[]{0, 0, 0}, new int[]{-1, -1, -1}};
    public static int[][] RobertsHorizontal = {new int[]{1, 0}, new int[]{0, -1}};
    public static int[][] RobertsVertical = {new int[]{0, 1}, new int[]{-1, 0}};
    public static int[][] ScharrHorizontal = {new int[]{3, 10, 3}, new int[]{0, 0, 0}, new int[]{-3, -10, -3}};
    public static int[][] ScharrVertical = {new int[]{3, 0, -3}, new int[]{10, 0, -10}, new int[]{3, 0, -3}};
    public static int[][] LaplacianOfGaussian = {new int[]{0, 0, -1, 0, 0}, new int[]{0, -1, -2, -1, 0}, new int[]{-1, -2, 16, -2, -1}, new int[]{0, -1, -2, -1, 0}, new int[]{0, 0, -1, 0, 0}};
    public static int[][] SmoothNoiseRobust_Horizontal = {new int[]{-1, -2, -1}, new int[]{-2, -4, -2}, new int[]{0, 0, 0}, new int[]{2, 4, 2}, new int[]{1, 2, 1}};
    public static int[][] SmoothNoiseRobust_Vertical = {new int[]{-1, -2, 0, 2, 1}, new int[]{-2, -4, 0, 4, 2}, new int[]{-1, -2, 0, 2, 1}};

    private ConvolutionKernel() {
    }
}
