.class Lcom/htc/android/epst/HtcNAM$2;
.super Ljava/lang/Object;
.source "HtcNAM.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/HtcNAM;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/HtcNAM;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/HtcNAM;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/htc/android/epst/HtcNAM$2;->this$0:Lcom/htc/android/epst/HtcNAM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 131
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
