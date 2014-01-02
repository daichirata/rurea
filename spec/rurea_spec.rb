# -*- coding: utf-8 -*-
require File.dirname(__FILE__) + '/spec_helper'

describe Rurea::App do
  context "access pages" do
    let(:content_type) { "application/json;charset=utf-8" }
    let(:bad_query) { {"status"=>400,"result"=>"Bad Request: query error."}.to_json }

    describe '/' do
      before { get '/' }

      it "should return error" do
        last_response.should_not be_ok
      end

      it "should return the correct content-type" do
        last_response.headers["Content-Type"].should == content_type
      end

      it "should return the json (bad query)" do
        last_response.body.should == bad_query
      end
    end

    describe '/:version/:method' do
      before { get '/1.9.3/each' }

      it "should return normal if it was the correct access" do
        last_response.should be_ok
      end

      it "should return the correct content-type" do
        last_response.headers["Content-Type"].should == content_type
      end

      context 'when there are multiple condition' do
        it "should return status 202" do
          JSON.parse(last_response.body)['status'].should == 202
        end
      end

      context 'when more than one candidate does not exist. it' do
        it "should return status 202" do
          get '/1.9.3/Array.each'
          JSON.parse(last_response.body)['status'].should == 200
        end
      end
    end

    describe '/:version/:method/:num' do
      before { get '/1.9.3/each/1' }

      it "should return normal if it was the correct access" do
        last_response.should be_ok
      end

      it "should return the correct content-type" do
        last_response.headers["Content-Type"].should == content_type
      end

      context 'when more than one candidate does not exist' do
        it "should return status 202" do
          JSON.parse(last_response.body)['status'].should == 200
        end
      end
    end

    context 'but the URL is wrong' do
      describe '/:version/:method' do
        it "when the candidate does not exist. should return status 404" do
          get '/1.9.3/Ary.each'
          last_response.body.should ==
            {"status"=>404,"result"=>"no such class or number: Ary.each "}.to_json
        end

        it 'version does not exist. should retrun status 404' do
          get "/1.9.1/each"
          last_response.body.should ==
            {"status"=>404,"result"=>"version 1.9.1 does not exist."}.to_json
        end
      end

      describe '/:version/:method/:num' do
        it "when the candidate does not exist. should return status 404" do
          get '/1.9.3/each/100000'
          last_response.body.should ==
            {"status"=>404,"result"=>"no such class or number: each 100000"}.to_json
        end

        it 'version does not exist' do
          get "/1.9.1/each/1"
          last_response.body.should ==
            {"status"=>404,"result"=>"version 1.9.1 does not exist."}.to_json
        end
      end
    end
  end
end
