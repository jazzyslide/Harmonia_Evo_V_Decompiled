.class Lcom/htc/fm/FMRadio$20;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 2558
    iput-object p1, p0, Lcom/htc/fm/FMRadio$20;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2560
    iget-object v0, p0, Lcom/htc/fm/FMRadio$20;->this$0:Lcom/htc/fm/FMRadio;

    const/4 v1, 0x1

    #calls: Lcom/htc/fm/FMRadio;->doTuneDown(Z)V
    invoke-static {v0, v1}, Lcom/htc/fm/FMRadio;->access$2800(Lcom/htc/fm/FMRadio;Z)V

    .line 2561
    return-void
.end method
