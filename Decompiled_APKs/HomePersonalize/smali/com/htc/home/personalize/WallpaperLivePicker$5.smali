.class Lcom/htc/home/personalize/WallpaperLivePicker$5;
.super Ljava/lang/Object;
.source "WallpaperLivePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/WallpaperLivePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/WallpaperLivePicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/WallpaperLivePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$5;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 782
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$5;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mIsFinish:Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$1200(Lcom/htc/home/personalize/WallpaperLivePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    :goto_0
    return-void

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$5;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mScrolling:[Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$700(Lcom/htc/home/personalize/WallpaperLivePicker;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$5;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$1000(Lcom/htc/home/personalize/WallpaperLivePicker;)Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$5;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$1400(Lcom/htc/home/personalize/WallpaperLivePicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$5;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mUpdateWallpaper:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$1300(Lcom/htc/home/personalize/WallpaperLivePicker;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
