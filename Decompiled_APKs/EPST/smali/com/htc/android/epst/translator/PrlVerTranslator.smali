.class public Lcom/htc/android/epst/translator/PrlVerTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "PrlVerTranslator.java"


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 11
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/PrlVerTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 15
    iget-object v1, p0, Lcom/htc/android/epst/translator/PrlVerTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v2, 0x1f50

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;

    .line 16
    .local v0, prl:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;->getVersion()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 21
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x1f50

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 23
    return-void
.end method
