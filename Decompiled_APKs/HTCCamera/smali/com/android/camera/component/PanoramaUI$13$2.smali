.class Lcom/android/camera/component/PanoramaUI$13$2;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaUI$13;->onEvent(Lcom/android/camera/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/PanoramaUI$13;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaUI$13;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaUI$13$2;->this$1:Lcom/android/camera/component/PanoramaUI$13;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateOrientation(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$13$2;->this$1:Lcom/android/camera/component/PanoramaUI$13;

    iget-object v0, v0, Lcom/android/camera/component/PanoramaUI$13;->this$0:Lcom/android/camera/component/PanoramaUI;

    #calls: Lcom/android/camera/component/PanoramaUI;->updateIndicatorOrientation(I)V
    invoke-static {v0, p2}, Lcom/android/camera/component/PanoramaUI;->access$2100(Lcom/android/camera/component/PanoramaUI;I)V

    return-void
.end method
