.class Lcom/htc/home/personalize/WallpaperPreview$5;
.super Ljava/lang/Object;
.source "WallpaperPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/WallpaperPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/WallpaperPreview;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/WallpaperPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPreview$5;->this$0:Lcom/htc/home/personalize/WallpaperPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPreview$5;->this$0:Lcom/htc/home/personalize/WallpaperPreview;

    invoke-virtual {v0}, Lcom/htc/home/personalize/WallpaperPreview;->finish()V

    .line 330
    return-void
.end method
