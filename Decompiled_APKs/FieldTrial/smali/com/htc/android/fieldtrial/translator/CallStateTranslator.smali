.class public Lcom/htc/android/fieldtrial/translator/CallStateTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "CallStateTranslator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/translator/Translator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSettingValue(I)Ljava/lang/String;
    .locals 5
    .parameter "itemId"

    .prologue
    .line 14
    invoke-static {}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    move-result-object v0

    .line 15
    .local v0, dmCmdCtrl:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;

    move-result-object v2

    check-cast v2, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;

    .line 16
    .local v2, structure:Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;
    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/dmcmd/DM_STATUS;->getCDMA_RxState()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 17
    .local v1, state:I
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v3

    const v4, 0x7f040001

    invoke-virtual {v3, v4}, Lcom/htc/android/fieldtrial/Utility;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    return-object v3
.end method

.method protected sendRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 22
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v0

    const/16 v1, 0xcd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/htc/android/fieldtrial/Port;->requestDmCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 23
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p0}, Lcom/htc/android/fieldtrial/Port;->requestDmCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 24
    return-void
.end method
