.class public final Landroid/speech/srec/Recognizer;
.super Ljava/lang/Object;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/srec/Recognizer$Grammar;
    }
.end annotation


# static fields
.field public static final EVENT_END_OF_VOICING:I = 0x6

.field public static final EVENT_INCOMPLETE:I = 0x2

.field public static final EVENT_INVALID:I = 0x0

.field public static final EVENT_MAX_SPEECH:I = 0xc

.field public static final EVENT_NEED_MORE_AUDIO:I = 0xb

.field public static final EVENT_NO_MATCH:I = 0x1

.field public static final EVENT_RECOGNITION_RESULT:I = 0x8

.field public static final EVENT_RECOGNITION_TIMEOUT:I = 0xa

.field public static final EVENT_SPOKE_TOO_SOON:I = 0x7

.field public static final EVENT_STARTED:I = 0x3

.field public static final EVENT_START_OF_UTTERANCE_TIMEOUT:I = 0x9

.field public static final EVENT_START_OF_VOICING:I = 0x5

.field public static final EVENT_STOPPED:I = 0x4

.field public static final KEY_CONFIDENCE:Ljava/lang/String; = "conf"

.field public static final KEY_LITERAL:Ljava/lang/String; = "literal"

.field public static final KEY_MEANING:Ljava/lang/String; = "meaning"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

.field private mPutAudioBuffer:[B

.field private mRecognizer:I

.field private mVocabulary:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "srec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "Recognizer"

    sput-object v0, Landroid/speech/srec/Recognizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:I

    iput v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    iput-object v1, p0, Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

    iput-object v1, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemInit()V

    invoke-static {p1}, Landroid/speech/srec/Recognizer;->SR_SessionCreate(Ljava/lang/String;)V

    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_RecognizerCreate()I

    move-result v0

    iput v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_RecognizerSetup(I)V

    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_VocabularyLoad()I

    move-result v0

    iput v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:I

    return-void
.end method

.method private static native PMemInit()V
.end method

.method private static native PMemShutdown()V
.end method

.method private static native SR_AcousticStateGet(I)Ljava/lang/String;
.end method

.method private static native SR_AcousticStateReset(I)V
.end method

.method private static native SR_AcousticStateSet(ILjava/lang/String;)V
.end method

.method private static native SR_GrammarAddWordToSlot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native SR_GrammarAllowAll(I)V
.end method

.method private static native SR_GrammarAllowOnly(ILjava/lang/String;)V
.end method

.method private static native SR_GrammarCompile(I)V
.end method

.method private static native SR_GrammarCreate()I
.end method

.method private static native SR_GrammarDestroy(I)V
.end method

.method private static native SR_GrammarLoad(Ljava/lang/String;)I
.end method

.method private static native SR_GrammarResetAllSlots(I)V
.end method

.method private static native SR_GrammarSave(ILjava/lang/String;)V
.end method

.method private static native SR_GrammarSetupRecognizer(II)V
.end method

.method private static native SR_GrammarSetupVocabulary(II)V
.end method

.method private static native SR_GrammarUnsetupRecognizer(I)V
.end method

.method private static native SR_RecognizerActivateRule(IILjava/lang/String;I)V
.end method

.method private static native SR_RecognizerAdvance(I)I
.end method

.method private static native SR_RecognizerCheckGrammarConsistency(II)Z
.end method

.method private static native SR_RecognizerCreate()I
.end method

.method private static native SR_RecognizerDeactivateAllRules(I)V
.end method

.method private static native SR_RecognizerDeactivateRule(IILjava/lang/String;)V
.end method

.method private static native SR_RecognizerDestroy(I)V
.end method

.method private static native SR_RecognizerGetBoolParameter(ILjava/lang/String;)Z
.end method

.method private static native SR_RecognizerGetParameter(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private static native SR_RecognizerGetSize_tParameter(ILjava/lang/String;)I
.end method

.method private static native SR_RecognizerHasSetupRules(I)Z
.end method

.method private static native SR_RecognizerIsActiveRule(IILjava/lang/String;)Z
.end method

.method private static native SR_RecognizerIsSetup(I)Z
.end method

.method private static native SR_RecognizerIsSignalClipping(I)Z
.end method

.method private static native SR_RecognizerIsSignalDCOffset(I)Z
.end method

.method private static native SR_RecognizerIsSignalNoisy(I)Z
.end method

.method private static native SR_RecognizerIsSignalTooFewSamples(I)Z
.end method

.method private static native SR_RecognizerIsSignalTooManySamples(I)Z
.end method

.method private static native SR_RecognizerIsSignalTooQuiet(I)Z
.end method

.method private static native SR_RecognizerPutAudio(I[BIIZ)I
.end method

.method private static native SR_RecognizerResultGetKeyCount(II)I
.end method

.method private static native SR_RecognizerResultGetKeyList(II)[Ljava/lang/String;
.end method

.method private static native SR_RecognizerResultGetSize(I)I
.end method

.method private static native SR_RecognizerResultGetValue(IILjava/lang/String;)Ljava/lang/String;
.end method

.method private static native SR_RecognizerResultGetWaveform(I)[B
.end method

.method private static native SR_RecognizerSetBoolParameter(ILjava/lang/String;Z)V
.end method

.method private static native SR_RecognizerSetParameter(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native SR_RecognizerSetSize_tParameter(ILjava/lang/String;I)V
.end method

.method private static native SR_RecognizerSetup(I)V
.end method

.method private static native SR_RecognizerSetupRule(IILjava/lang/String;)V
.end method

.method private static native SR_RecognizerStart(I)V
.end method

.method private static native SR_RecognizerStop(I)V
.end method

.method private static native SR_RecognizerUnsetup(I)V
.end method

.method private static native SR_SessionCreate(Ljava/lang/String;)V
.end method

.method private static native SR_SessionDestroy()V
.end method

.method private static native SR_VocabularyDestroy(I)V
.end method

.method private static native SR_VocabularyGetPronunciation(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private static native SR_VocabularyLoad()I
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/speech/srec/Recognizer;->SR_GrammarLoad(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/speech/srec/Recognizer;)I
    .locals 1

    iget v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:I

    return v0
.end method

.method static synthetic access$1000(I)V
    .locals 0

    invoke-static {p0}, Landroid/speech/srec/Recognizer;->SR_GrammarDestroy(I)V

    return-void
.end method

.method static synthetic access$200(II)V
    .locals 0

    invoke-static {p0, p1}, Landroid/speech/srec/Recognizer;->SR_GrammarSetupVocabulary(II)V

    return-void
.end method

.method static synthetic access$300(I)V
    .locals 0

    invoke-static {p0}, Landroid/speech/srec/Recognizer;->SR_GrammarResetAllSlots(I)V

    return-void
.end method

.method static synthetic access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/speech/srec/Recognizer;->SR_GrammarAddWordToSlot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(I)V
    .locals 0

    invoke-static {p0}, Landroid/speech/srec/Recognizer;->SR_GrammarCompile(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/speech/srec/Recognizer;)I
    .locals 1

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    return v0
.end method

.method static synthetic access$700(II)V
    .locals 0

    invoke-static {p0, p1}, Landroid/speech/srec/Recognizer;->SR_GrammarSetupRecognizer(II)V

    return-void
.end method

.method static synthetic access$802(Landroid/speech/srec/Recognizer;Landroid/speech/srec/Recognizer$Grammar;)Landroid/speech/srec/Recognizer$Grammar;
    .locals 0

    iput-object p1, p0, Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

    return-object p1
.end method

.method static synthetic access$900(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/speech/srec/Recognizer;->SR_GrammarSave(ILjava/lang/String;)V

    return-void
.end method

.method public static eventToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "EVENT_INVALID"

    goto :goto_0

    :pswitch_1
    const-string v0, "EVENT_NO_MATCH"

    goto :goto_0

    :pswitch_2
    const-string v0, "EVENT_INCOMPLETE"

    goto :goto_0

    :pswitch_3
    const-string v0, "EVENT_STARTED"

    goto :goto_0

    :pswitch_4
    const-string v0, "EVENT_STOPPED"

    goto :goto_0

    :pswitch_5
    const-string v0, "EVENT_START_OF_VOICING"

    goto :goto_0

    :pswitch_6
    const-string v0, "EVENT_END_OF_VOICING"

    goto :goto_0

    :pswitch_7
    const-string v0, "EVENT_SPOKE_TOO_SOON"

    goto :goto_0

    :pswitch_8
    const-string v0, "EVENT_RECOGNITION_RESULT"

    goto :goto_0

    :pswitch_9
    const-string v0, "EVENT_START_OF_UTTERANCE_TIMEOUT"

    goto :goto_0

    :pswitch_a
    const-string v0, "EVENT_RECOGNITION_TIMEOUT"

    goto :goto_0

    :pswitch_b
    const-string v0, "EVENT_NEED_MORE_AUDIO"

    goto :goto_0

    :pswitch_c
    const-string v0, "EVENT_MAX_SPEECH"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static getConfigDir(Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/usr/srec/config/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public advance()I
    .locals 1

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_RecognizerAdvance(I)I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_VocabularyDestroy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput v2, p0, Landroid/speech/srec/Recognizer;->mVocabulary:I

    :try_start_1
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_RecognizerUnsetup(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :cond_1
    :try_start_2
    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_RecognizerDestroy(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    :cond_2
    iput v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    :try_start_3
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    return-void

    :catchall_0
    move-exception v0

    iput v2, p0, Landroid/speech/srec/Recognizer;->mVocabulary:I

    :try_start_4
    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerUnsetup(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    :try_start_5
    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerDestroy(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :cond_4
    iput v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    :try_start_6
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_7
    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerDestroy(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_5
    iput v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    :try_start_8
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_2
    move-exception v0

    iput v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    :try_start_9
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_3
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_4
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_5
    move-exception v0

    iput v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    :try_start_a
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_6
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_7
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_8
    move-exception v0

    :try_start_b
    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerDestroy(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    :cond_6
    iput v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    :try_start_c
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_9
    move-exception v0

    iput v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    :try_start_d
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_a
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_b
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_c
    move-exception v0

    iput v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    :try_start_e
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_d
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_e
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/speech/srec/Recognizer;->destroy()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "someone forgot to destroy Recognizer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public getAcousticState()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_AcousticStateGet(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResult(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0, p1, p2}, Landroid/speech/srec/Recognizer;->SR_RecognizerResultGetValue(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultCount()I
    .locals 1

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_RecognizerResultGetSize(I)I

    move-result v0

    return v0
.end method

.method public getResultKeys(I)[Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0, p1}, Landroid/speech/srec/Recognizer;->SR_RecognizerResultGetKeyList(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putAudio([BIIZ)I
    .locals 1

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/speech/srec/Recognizer;->SR_RecognizerPutAudio(I[BIIZ)I

    move-result v0

    return v0
.end method

.method public putAudio(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    if-nez v1, :cond_0

    const/16 v1, 0x200

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    :cond_0
    iget-object v1, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    iget-object v2, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    const/4 v3, 0x1

    invoke-static {v1, v2, v4, v4, v3}, Landroid/speech/srec/Recognizer;->SR_RecognizerPutAudio(I[BIIZ)I

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    iget-object v2, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    invoke-static {v1, v2, v4, v0, v4}, Landroid/speech/srec/Recognizer;->SR_RecognizerPutAudio(I[BIIZ)I

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SR_RecognizerPutAudio failed nbytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetAcousticState()V
    .locals 1

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_AcousticStateReset(I)V

    return-void
.end method

.method public setAcousticState(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0, p1}, Landroid/speech/srec/Recognizer;->SR_AcousticStateSet(ILjava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 4

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    iget-object v1, p0, Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

    #getter for: Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I
    invoke-static {v1}, Landroid/speech/srec/Recognizer$Grammar;->access$1100(Landroid/speech/srec/Recognizer$Grammar;)I

    move-result v1

    const-string/jumbo v2, "trash"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/speech/srec/Recognizer;->SR_RecognizerActivateRule(IILjava/lang/String;I)V

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_RecognizerStart(I)V

    return-void
.end method

.method public stop()V
    .locals 3

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->SR_RecognizerStop(I)V

    iget v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:I

    iget-object v1, p0, Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

    #getter for: Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I
    invoke-static {v1}, Landroid/speech/srec/Recognizer$Grammar;->access$1100(Landroid/speech/srec/Recognizer$Grammar;)I

    move-result v1

    const-string/jumbo v2, "trash"

    invoke-static {v0, v1, v2}, Landroid/speech/srec/Recognizer;->SR_RecognizerDeactivateRule(IILjava/lang/String;)V

    return-void
.end method
