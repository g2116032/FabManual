#pragma warning(disable:4996)
#define PRAGMA_ONCE 1
#define TARGET_API_MAC_CARBON 0
#include <algorithm>
#include <cmath>
#include <cstdlib>
#include <ctime>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <math.h>
#include <sstream> 
#include <stdio.h>
#include <string>
#include <time.h>
#include <vector>
#include <windows.h>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/features2d/features2d.hpp>
#include <opencv2/opencv.hpp>
#include <opencv2/ml/ml.hpp>
#include <libsvm/svm.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/objdetect/objdetect.hpp>
#include <opencv2/features2d/features2d.hpp>

using namespace cv;
using namespace std;


char* FileName = "C:\\test_handa.avi";

int label[4096], frame[4096];
float result[4096], result2[4096], result3[4096];

void output_text(double frame_count){
	FILE *file;
	file = fopen("test.avs", "w+");

	fprintf(file, "function ChangePlaySpeed(clip clip, float speed) {\n");
	fprintf(file, "	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)\n");
	fprintf(file, "	rate = clip.Framerate()\n");
	fprintf(file, "	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)\n");
	fprintf(file, "	return clip\n}\n\n");
	//fprintf(file, "src = DirectShowSource(\"C:\\Users\\Tsuka\\Desktop\\CinemaGazer\\movie.mp4\")\n");
	fprintf(file, "src = DirectShowSource(\"C:\\test\_handa.avi\")\n");
	fprintf(file, "result = Trim(src,0,-1).ConvertToRGB32()\n");
	fprintf(file, "fps = src.Framerate\n");

	for (int i = 0; i <= 168; i++){
		//sp(i);
		if (result[i] == 0){			//パーツを持ってくる
			fprintf(file, "tmp = Trim(src,%d,%d).ConvertToRGB32()", frame[i], frame[i + 1] - 1);
			fprintf(file, "tmp = tmp.ChangePlaySpeed(3)");
			fprintf(file, "tmp = tmp.Subtitle(\"x3\", align = 9)");
			fprintf(file, "tmp = tmp.Subtitle(\"パーツを持ってくる\", font=\"ＭＳ Ｐゴシック\")");
			fprintf(file, "result = result ++ tmp\n");
		}
		else if (result[i] == 1){	//パーツの組み立て
			fprintf(file, "tmp = Trim(src,%d,%d).ConvertToRGB32()", frame[i], frame[i + 1] - 1);
			fprintf(file, "tmp = tmp.ChangePlaySpeed(3)");
			fprintf(file, "tmp = tmp.Subtitle(\"x3\", align = 9)");
			fprintf(file, "tmp = tmp.Subtitle(\"パーツを組み立てる\", font=\"ＭＳ Ｐゴシック\")");
			fprintf(file, "result = result ++ tmp\n");
		}
		else if (result[i] == 3){	//反復作業
			fprintf(file, "tmp = Trim(src,%d,%d).ConvertToRGB32()", frame[i], frame[i + 1] - 1);
			fprintf(file, "tmp = tmp.ChangePlaySpeed(8)");
			fprintf(file, "tmp = tmp.Subtitle(\"x8\", align = 9)");
			fprintf(file, "tmp = tmp.Subtitle(\"繰り返し\", font=\"ＭＳ Ｐゴシック\")");
			fprintf(file, "result = result ++ tmp\n");
		}
		else if (result[i] == 4){	//複雑な作業
			fprintf(file, "tmp = Trim(src,%d,%d).ConvertToRGB32()", frame[i], frame[i + 1] - 1);
			fprintf(file, "tmp = tmp.ChangePlaySpeed(1)");
			fprintf(file, "tmp = tmp.Subtitle(\"x1\", align = 9)");
			fprintf(file, "tmp = tmp.Subtitle(\"複雑な作業\", font=\"ＭＳ Ｐゴシック\")");
			fprintf(file, "result = result ++ tmp\n");
		}
		else if (result[i] == 5){	//何もしていない
			fprintf(file, "tmp = Trim(src,%d,%d).ConvertToRGB32()", frame[i], frame[i + 1] - 1);
			fprintf(file, "tmp = tmp.ChangePlaySpeed(8)");
			fprintf(file, "tmp = tmp.Subtitle(\"x8\", align = 9)");
			fprintf(file, "tmp = tmp.Subtitle(\"何もしていない\", font=\"ＭＳ Ｐゴシック\")");
			fprintf(file, "result = result ++ tmp\n");
		}
	}
	fprintf(file, "return result\n");
	fclose(file);
}

void output_text2(double frame_count){
	FILE *file;
	file = fopen("test2.avs", "w+");

	fprintf(file, "function ChangePlaySpeed(clip clip, float speed) {\n");
	fprintf(file, "	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)\n");
	fprintf(file, "	rate = clip.Framerate()\n");
	fprintf(file, "	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)\n");
	fprintf(file, "	return clip\n}\n\n");
	fprintf(file, "src = DirectShowSource(\"C:\\test\_handa.avi\")\n");
	fprintf(file, "result = Trim(src,0,-1).ConvertToRGB32()\n");
	fprintf(file, "fps = src.Framerate\n");

	for (int i = 0; i <= 168; i++){
		//sp(i);
		if (result2[i] == 0){			//パーツを持ってくる
			fprintf(file, "tmp = Trim(src,%d,%d).ConvertToRGB32()", frame[i], frame[i + 1] - 1);
			fprintf(file, "tmp = tmp.ChangePlaySpeed(3)");
			fprintf(file, "tmp = tmp.Subtitle(\"x3\", align = 9)");
			fprintf(file, "tmp = tmp.Subtitle(\"パーツを持ってくる\", font=\"ＭＳ Ｐゴシック\")");
			fprintf(file, "result = result ++ tmp\n");
		}
		else if (result2[i] == 1){	//パーツの組み立て
			fprintf(file, "tmp = Trim(src,%d,%d).ConvertToRGB32()", frame[i], frame[i + 1] - 1);
			fprintf(file, "tmp = tmp.ChangePlaySpeed(3)");
			fprintf(file, "tmp = tmp.Subtitle(\"x3\", align = 9)");
			fprintf(file, "tmp = tmp.Subtitle(\"パーツを組み立てる\", font=\"ＭＳ Ｐゴシック\")");
			fprintf(file, "result = result ++ tmp\n");
		}
		else if (result2[i] == 3){	//反復作業
			fprintf(file, "tmp = Trim(src,%d,%d).ConvertToRGB32()", frame[i], frame[i + 1] - 1);
			fprintf(file, "tmp = tmp.ChangePlaySpeed(8)");
			fprintf(file, "tmp = tmp.Subtitle(\"x8\", align = 9)");
			fprintf(file, "tmp = tmp.Subtitle(\"繰り返し\", font=\"ＭＳ Ｐゴシック\")");
			fprintf(file, "result = result ++ tmp\n");
		}
		else if (result2[i] == 4){	//複雑な作業
			fprintf(file, "tmp = Trim(src,%d,%d).ConvertToRGB32()", frame[i], frame[i + 1] - 1);
			fprintf(file, "tmp = tmp.ChangePlaySpeed(1)");
			fprintf(file, "tmp = tmp.Subtitle(\"x1\", align = 9)");
			fprintf(file, "tmp = tmp.Subtitle(\"複雑な作業\", font=\"ＭＳ Ｐゴシック\")");
			fprintf(file, "result = result ++ tmp\n");
		}
		else if (result2[i] == 5){	//何もしていない
			fprintf(file, "tmp = Trim(src,%d,%d).ConvertToRGB32()", frame[i], frame[i + 1] - 1);
			fprintf(file, "tmp = tmp.ChangePlaySpeed(8)");
			fprintf(file, "tmp = tmp.Subtitle(\"x8\", align = 9)");
			fprintf(file, "tmp = tmp.Subtitle(\"何もしていない\", font=\"ＭＳ Ｐゴシック\")");
			fprintf(file, "result = result ++ tmp\n");
		}
	}
	fprintf(file, "return result\n");
	fclose(file);
}

void output_text3(double frame_count){
	FILE *file;
	file = fopen("test3.avs", "w+");

	fprintf(file, "function ChangePlaySpeed(clip clip, float speed) {\n");
	fprintf(file, "	clip = clip.TimeStretch(tempo = 100.0*speed, sequence = 41)\n");
	fprintf(file, "	rate = clip.Framerate()\n");
	fprintf(file, "	clip = clip.AssumeFPS(rate*speed).ChangeFPS(rate)\n");
	fprintf(file, "	return clip\n}\n\n");
	fprintf(file, "src = DirectShowSource(\"C:\\test_handa.avi\")\n");
	fprintf(file, "result = Trim(src,0,-1).ConvertToRGB32()\n");
	fprintf(file, "fps = src.Framerate\n");

	for (int i = 0; i <= 168; i++){
		//sp(i);
		if (result3[i] == 0){			//パーツを持ってくる
			fprintf(file, "tmp = Trim(src,%d,%d).ConvertToRGB32()", frame[i], frame[i + 1] - 1);
			fprintf(file, "tmp = tmp.ChangePlaySpeed(3)");
			fprintf(file, "tmp = tmp.Subtitle(\"x3\", align = 9)");
			fprintf(file, "tmp = tmp.Subtitle(\"パーツを持ってくる\", font=\"ＭＳ Ｐゴシック\")");
			fprintf(file, "result = result ++ tmp\n");
		}
		else if (result3[i] == 1){	//パーツの組み立て
			fprintf(file, "tmp = Trim(src,%d,%d).ConvertToRGB32()", frame[i], frame[i + 1] - 1);
			fprintf(file, "tmp = tmp.ChangePlaySpeed(3)");
			fprintf(file, "tmp = tmp.Subtitle(\"x3\", align = 9)");
			fprintf(file, "tmp = tmp.Subtitle(\"パーツを組み立てる\", font=\"ＭＳ Ｐゴシック\")");
			fprintf(file, "result = result ++ tmp\n");
		}
		else if (result3[i] == 3){	//反復作業
			fprintf(file, "tmp = Trim(src,%d,%d).ConvertToRGB32()", frame[i], frame[i + 1] - 1);
			fprintf(file, "tmp = tmp.ChangePlaySpeed(8)");
			fprintf(file, "tmp = tmp.Subtitle(\"x8\", align = 9)");
			fprintf(file, "tmp = tmp.Subtitle(\"繰り返し\", font=\"ＭＳ Ｐゴシック\")");
			fprintf(file, "result = result ++ tmp\n");
		}
		else if (result3[i] == 4){	//複雑な作業
			fprintf(file, "tmp = Trim(src,%d,%d).ConvertToRGB32()", frame[i], frame[i + 1] - 1);
			fprintf(file, "tmp = tmp.ChangePlaySpeed(1)");
			fprintf(file, "tmp = tmp.Subtitle(\"x1\", align = 9)");
			fprintf(file, "tmp = tmp.Subtitle(\"複雑な作業\", font=\"ＭＳ Ｐゴシック\")");
			fprintf(file, "result = result ++ tmp\n");
		}
		else if (result3[i] == 5){	//何もしていない
			fprintf(file, "tmp = Trim(src,%d,%d).ConvertToRGB32()", frame[i], frame[i + 1] - 1);
			fprintf(file, "tmp = tmp.ChangePlaySpeed(8)");
			fprintf(file, "tmp = tmp.Subtitle(\"x8\", align = 9)");
			fprintf(file, "tmp = tmp.Subtitle(\"何もしていない\", font=\"ＭＳ Ｐゴシック\")");
			fprintf(file, "result = result ++ tmp\n");
		}
	}
	fprintf(file, "return result\n");
	fclose(file);
}


void exportData(int Framage){
	//Mat out_image = Mat(350, 350, 350, 350, CV_8UC3);

	float rhand[1000][2], lhand[1000][2], handa[1000][2], wirestripper[1000][2], moter[1000][2];
	float handa_label[1000], wirestripper_label[1000], moter_label[1000];

	int i = 0, j = 0;
	ifstream Rhand("Rhand.csv"), Lhand("Lhand.csv"), Handa("handa.csv");
	ifstream Wirestripper("wirestripper.csv"), Moter("moter.csv");
	ifstream Handa_label("Label_handa.csv"), Wirestripper_label("Label_wirestripper.csv"), Moter_label("Label_moter.csv");
	string str, str1, str2, str3, str4, str5, str6, str7, str8;

	while (getline(Rhand, str)){
		string token;
		istringstream stream(str);
		//1行のうち、文字列とコンマを分割する
		while (getline(stream, token, ',')){
			//すべて文字列として読み込まれるため
			//数値は変換が必要
			float temp = stof(token); //stof(string str) : stringをfloatに変換
			if (i == 0){
				rhand[j][0] = temp;
				//cout << rhand[j][0] << "	";
				i++;
			}
			else if (i == 1){
				rhand[j][1] = temp;
				//cout << rhand[j][1] << "\n";
				i--;
				j++;
			}
		}
	}


	i = 0, j = 0;
	while (getline(Lhand, str)){
		string token;
		istringstream stream(str);
		//1行のうち、文字列とコンマを分割する
		while (getline(stream, token, ',')){
			//すべて文字列として読み込まれるため
			//数値は変換が必要
			float temp = stof(token); //stof(string str) : stringをfloatに変換
			if (i == 0){
				lhand[j][0] = temp;
				//cout << rhand[j][0] << "	";
				i++;
			}
			else if (i == 1){
				lhand[j][1] = temp;
				//cout << rhand[j][1] << "\n";
				i--;
				j++;
			}
		}
	}


	i = 0, j = 0;
	while (getline(Handa, str)){
		string token;
		istringstream stream(str);

		//1行のうち、文字列とコンマを分割する
		while (getline(stream, token, ',')){
			//すべて文字列として読み込まれるため
			//数値は変換が必要
			float temp = stof(token); //stof(string str) : stringをfloatに変換
			if (i == 0){
				handa[j][0] = temp;
				//cout << rhand[j][0] << "	";
				i++;
			}
			else if (i == 1){
				handa[j][1] = temp;
				//cout << rhand[j][1] << "\n";
				i--;
				j++;
			}
		}
	}


	i = 0;
	while (getline(Handa_label, str)){
		string token;
		istringstream stream(str);

		//1行のうち、文字列とコンマを分割する
		while (getline(stream, token, ',')){
			//すべて文字列として読み込まれるため
			//数値は変換が必要
			float temp = stof(token); //stof(string str) : stringをfloatに変換
			handa_label[i] = temp;
			i++;
		}
	}

	i = 0, j = 0;
	while (getline(Wirestripper, str)){
		string token;
		istringstream stream(str);

		//1行のうち、文字列とコンマを分割する
		while (getline(stream, token, ',')){
			//すべて文字列として読み込まれるため
			//数値は変換が必要
			float temp = stof(token); //stof(string str) : stringをfloatに変換
			if (i == 0){
				wirestripper[j][0] = temp;
				//cout << rhand[j][0] << "	";
				i++;
			}
			else if (i == 1){
				wirestripper[j][1] = temp;
				//cout << rhand[j][1] << "\n";
				i--;
				j++;
			}
		}
	}

	i = 0;
	while (getline(Wirestripper_label, str)){
		string token;
		istringstream stream(str);

		//1行のうち、文字列とコンマを分割する
		while (getline(stream, token, ',')){
			//すべて文字列として読み込まれるため
			//数値は変換が必要
			float temp = stof(token); //stof(string str) : stringをfloatに変換
			wirestripper_label[i] = temp;
			i++;
		}
	}


	i = 0, j = 0;
	while (getline(Moter, str)){
		string token;
		istringstream stream(str);

		//1行のうち、文字列とコンマを分割する
		while (getline(stream, token, ',')){
			//すべて文字列として読み込まれるため
			//数値は変換が必要
			float temp = stof(token); //stof(string str) : stringをfloatに変換
			if (i == 0){
				moter[j][0] = temp;
				//cout << rhand[j][0] << "	";
				i++;
			}
			else if (i == 1){
				moter[j][1] = temp;
				//cout << rhand[j][1] << "\n";
				i--;
				j++;
			}
		}
	}

	i = 0;
	while (getline(Moter_label, str)){
		string token;
		istringstream stream(str);

		//1行のうち、文字列とコンマを分割する
		while (getline(stream, token, ',')){
			//すべて文字列として読み込まれるため
			//数値は変換が必要
			float temp = stof(token); //stof(string str) : stringをfloatに変換
			moter_label[i] = temp;
			i++;
		}
	}

	float right_dis[1000];
	float left_dis[1000];
	float right_dis2[1000];
	float left_dis2[1000];
	float right_dis3[1000];
	float left_dis3[1000];
	float dis[1000][2];
	float dis2[1000][2];
	float dis3[1000][2];


	for (int i = 0; i < 168; i++){
		right_dis[i] = sqrt(pow((rhand[i][0] - handa[i][0]), 2.0) + pow((rhand[i][1] - handa[i][1]), 2.0));
		left_dis[i] = sqrt(pow((lhand[i][0] - handa[i][0]), 2.0) + pow((lhand[i][1] - handa[i][1]), 2.0));
		dis[i][0] = right_dis[i];
		dis[i][1] = left_dis[i];
	}

	for (int i = 0; i < 168; i++){
		right_dis2[i] = sqrt(pow((rhand[i][0] - wirestripper[i][0]), 2.0) + pow((rhand[i][1] - wirestripper[i][1]), 2.0));
		left_dis2[i] = sqrt(pow((lhand[i][0] - wirestripper[i][0]), 2.0) + pow((lhand[i][1] - wirestripper[i][1]), 2.0));
		dis2[i][0] = right_dis2[i];
		dis2[i][1] = left_dis2[i];
	}

	for (int i = 0; i < 168; i++){
		right_dis3[i] = sqrt(pow((rhand[i][0] - moter[i][0]), 2.0) + pow((rhand[i][1] - moter[i][1]), 2.0));
		left_dis3[i] = sqrt(pow((lhand[i][0] - moter[i][0]), 2.0) + pow((lhand[i][1] - moter[i][1]), 2.0));
		dis3[i][0] = right_dis3[i];
		dis3[i][1] = left_dis3[i];
	}

	float label[168][3];
	float label2[168][3];
	float label3[168][3];
	for (int j = 0; j < 168; j++){
		label[j][0] = right_dis[j];
		label[j][1] = left_dis[j];
		label[j][2] = handa_label[j];
		label2[j][0] = right_dis2[j];
		label2[j][1] = left_dis2[j];
		label2[j][2] = wirestripper_label[j];
		label3[j][0] = right_dis3[j];
		label3[j][1] = left_dis3[j];
		label3[j][2] = moter_label[j];
	}


	Mat labels_data(168, 1, CV_32FC1, handa_label);
	Mat handa_training(168, 2, CV_32F, dis);
	Mat labels_data2(168, 1, CV_32FC1, wirestripper_label);
	Mat wirestripper_training(168, 2, CV_32F, dis2);
	Mat labels_data3(168, 1, CV_32FC1, moter_label);
	Mat moter_training(168, 2, CV_32F, dis3);

	CvSVMParams params;
	params.svm_type = SVM::C_SVC;
	params.kernel_type = SVM::RBF;
	params.C = 1.0;
	params.degree = 1.2;
	params.gamma = 0.0005;
	params.coef0 = 1.0;
	params.term_crit = TermCriteria(CV_TERMCRIT_ITER | CV_TERMCRIT_EPS, 100, 1e-6);

	CvSVM svm;
	svm.train(handa_training, labels_data, Mat(), Mat(), params);
	for (int i = 0; i < 168; i++){
		Mat sample = (Mat_<float>(1, 2) << right_dis[i], left_dis[i]);
		float response = svm.predict(sample);
		result[i] = response;
		/*if (response == 0.0f){
			cout << label[i][0] << "		" << label[i][1] << "		" << label[i][2] << "		" << "0" << "\n";
		}
		else if (response == 1.0f){
			cout << label[i][0] << "		" << label[i][1] << "		" << label[i][2] << "		" << "1" << "\n";
		}*/
	}

	cout << "================================================================================";

	//CvSVM svm;
	svm.train(wirestripper_training, labels_data2, Mat(), Mat(), params);
	for (int i = 0; i < 168; i++){
		Mat sample = (Mat_<float>(1, 2) << right_dis2[i], left_dis2[i]);
		float response = svm.predict(sample);
		result2[i] = response;
		/*if (response == 0.0f){
			cout << label2[i][0] << "		" << label2[i][1] << "		" << label2[i][2] << "		" << "0" << "\n";
		}
		else if (response == 1.0f){
			cout << label2[i][0] << "		" << label2[i][1] << "		" << label2[i][2] << "		" << "1" << "\n";
		}*/
	}

	cout << "================================================================================";

	//CvSVM svm;
	svm.train(moter_training, labels_data3, Mat(), Mat(), params);
	for (int i = 0; i < 168; i++){
		Mat sample = (Mat_<float>(1, 2) << right_dis3[i], left_dis3[i]);
		float response = svm.predict(sample);
		result3[i] = response;
		/*if (response == 0.0f){
			cout << label3[i][0] << "		" << label3[i][1] << "		" << label3[i][2] << "		" << "0" << "\n";
		}
		else if (response == 1.0f){
			cout << label3[i][0] << "		" << label3[i][1] << "		" << label3[i][2] << "		" << "1" << "\n";
		}*/

	}

	/*string name = "Box Example";
	CvCapture* capture;
	IplImage *frame = NULL;

	if ((capture = cvCaptureFromFile(FileName)) == NULL){}

	int k = 0;
	for (int i = 0; i < 168 * 20; i++){

		frame = cvQueryFrame(capture);
		//動画ファイルからフレーム画像(IplImage)の取込
		Mat image = cvarrToMat(frame);
		if (frame == NULL){ break; }
		//画像の表示
		cvShowImage("Box Example", frame);
		if (i % 20 == 0){
			cout << result3[k];
			k++;
		}

		//キー入力待ち（Escキーで終了）
		if (cvWaitKey(30) == '\x1b'){
			break;
		}
	}
	//解放
	cvReleaseCapture(&capture);
	cvDestroyWindow("CaptureFromFile");*/
}



void movieread(char* filename){
	CvCapture* capture;
	IplImage *frame = NULL;

	//動画ファイルを開く
	if ((capture = cvCaptureFromFile(FileName)) == NULL){
		//ファイルが見つからない時           
	}

	int Framage = cvGetCaptureProperty(capture, CV_CAP_PROP_FRAME_COUNT);

	//ウィンドウを開く
	cvNamedWindow("CaptureFromFile", CV_WINDOW_AUTOSIZE);
	

	/*for (int i = 0; i <= Framage; i++){
		//動画ファイルからフレーム画像(IplImage)の取込		
		frame = cvQueryFrame(capture);
		if (frame == NULL)
			break;
		//画像の表示
		//cvShowImage("CaptureFromFile", frame);
		if (i % 20 == 0){
			
		}

		//キー入力待ち（Escキーで終了）
		if (cvWaitKey(30) == '\x1b')
			break;
	}*/

	//解放
	cvReleaseCapture(&capture);
	cvDestroyWindow("CaptureFromFile");
	exportData(Framage);
	output_text(Framage);
	output_text2(Framage);
	output_text3(Framage);
}

int main(int argc, char* argv)
{
	while (1){
		printf("push button 1 ~ 4\n");
		printf("1 : 圧縮\n");
		printf("2 : 座標入力\n");
		printf("3 : ラベリング\n");
		int select;
		scanf("%d", &select);
		if (select == 1){
			char str[128];
			cout << "ファイルパスの入力" << "\n";
			cin >> str;
			char* FileName = str;
			movieread(str);
		}
		else if (select == 2){

		}
		else if (select == 3){

		}
	}
	//movieread(FileName);
}