.class Lcom/htc/android/locationpicker/PickerMain$1;
.super Landroid/os/Handler;
.source "PickerMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/locationpicker/PickerMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/locationpicker/PickerMain;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/PickerMain;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/htc/android/locationpicker/PickerMain$1;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 174
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 176
    :pswitch_0
    const-string v0, "PickerMain"

    const-string v1, "CANCEL_REVERSE_GEOCODE timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$1;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->doCancelReverseGeoCodeAndReturn()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$000(Lcom/htc/android/locationpicker/PickerMain;)V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
    .end packed-switch
.end method
